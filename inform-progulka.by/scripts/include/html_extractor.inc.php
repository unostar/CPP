<?php 
/**
 * Extracts a table from a HTML document, then converts it into
 * a PHP array.
 */
class HTMLTableExtractor
{
    /**
     * @var string
     */
    private $source	= null;

    /**
     * @var string
     */
    private $anchor	= null;

    /**
     * @var boolean
     */
    private $anchorWithin = false;

    /**
     * @var boolean
     */
    private $headerRow = true;

    /**
     * @var integer
     */
    private $startRow = 1;

    /**
     * @var integer
     */
    private $maxRows = 0;

    /**
     * @var integer
     */
    private $startCol = 1;

    /**
     * @var integer
     */
    private $maxCols = 0;

    /**
     * @var boolean
     */
    private $stripTags = false;

    /**
     * @var array
     */
    private $extraCols = array();

    /**
     * @var integer
     */
    private $rowCount = 0;

    /**
     * @var string
     */
    private $dropRows = null;

    /**
     * @var string
     */
    private $cleanHTML = null;

    /**
     * @var array
     */
    private $rawArray = null;

    /**
     * @var array
     */
    private $finalArray = null;


    function __construct() {}


    function extractTable()
    {
        $this->cleanHTML();
        $this->prepareArray();

        return $this->createArray();
    } // fn extractTable


    function cleanHTML()
    {
        if(!function_exists('stripos')) {
            function stripos($haystack,$needle,$offset = 0) {
                return(strpos(strtolower($haystack),strtolower($needle),$offset));
            }
        }

        // finds unique string that appears before the table we want to extract
        if ($this->anchorWithin) {
            $anchorPos = stripos($this->source, $this->anchor) + strlen($this->anchor);
            $sourceSnippet = strrev(substr($this->source, 0, $anchorPos));
            $tablePos = stripos($sourceSnippet, strrev(("<table"))) + 6;
            $startSearch = strlen($sourceSnippet) - $tablePos;
        } else {
            $startSearch = stripos($this->source, $this->anchor);
        }

        // extracts table
        $startTable = stripos($this->source, '<table', $startSearch);
        $endTable = stripos($this->source, '</table>', $startTable) + 8;
        $table = substr($this->source, $startTable, $endTable - $startTable);

        // lowercases all table related tags
        $table = preg_replace_callback(
                     '/<(\/?)(table|tr|th|td)/is',
                     create_function(
                         '$input',
                         'return strtolower($input[0]);'
                     ),
                     $table
                 );

        // removes all thead and tbody tags
        $table = preg_replace('/<\/?(thead|tbody).*?>/is', '', $table);

        // replaces th tags with td tags
        $table = preg_replace('/<(\/?)th(.*?)>/is', '<$1td$2>', $table);

        // cleans string
        $table = trim($table);
        $table = str_replace("\r\n", "", $table);

        $this->cleanHTML = $table;
    } // fn cleanHTML


    function prepareArray()
    {
        // splits table into individual elements
        $pattern = '/(<\/?(?:tr|td).*?>)/is';
        $table = preg_split($pattern, $this->cleanHTML, -1, PREG_SPLIT_DELIM_CAPTURE);

        // defines array for new table
        $tableCleaned = array();

        // defines variables for looping through table
        $rowCount = 0;
        $colCount = 1;
        $trOpen = false;
        $tdOpen = false;

        // loops through table
        foreach($table as $item) {
            // trims item
            $item = str_replace('&nbsp;', '', $item);
            $item = trim($item);

            // saves the item
            $itemUnedited = $item;

            // cleans if tag
            $item = preg_replace('/<(\/?)(table|tr|td).*?>/is', '<$1$2>', $item);

            // picks item type
            switch ($item) {
            case '<tr>':
                // starts a new row
                $rowCount++;
                $colCount = 1;
                $trOpen = true;
                break;
            case '<td>':
                // saves the td tag for later use
                $tdTag = $itemUnedited;
                $tdOpen = true;
                break;
            case '</td>':
                $tdOpen = false;
                break;
            case '</tr>':
                $trOpen = false;
                break;
            default :
                if($tdOpen) {
                    // checks if td tag contained colspan
                    if(preg_match('/<td [^>]*colspan\s*=\s*(?:\'|")?\s*([0-9]+)[^>]*>/is', $tdTag, $matches)) {
                        $colspan = $matches[1];
                    } else {
                        $colspan = 1;
                    }

                    // checks if td tag contained rowspan
                    if(preg_match('/<td [^>]*rowspan\s*=\s*(?:\'|")?\s*([0-9]+)[^>]*>/is', $tdTag, $matches)) {
                        $rowspan = $matches[1];
                    } else {
                        $rowspan = 0;
                    }

                    // loops over the colspans
                    for($c = 0; $c < $colspan; $c++) {
                        // if the item data has not already been defined
                        // by a rowspan loop, set it
                        if(!isset($tableCleaned[$rowCount][$colCount])) {
                            $tableCleaned[$rowCount][$colCount] = $item;
                        } else {
                            $tableCleaned[$rowCount][$colCount + 1] = $item;
                        }

                        // creates new rowCount variable for looping
                        // through rowspans
                        $futureRows = $rowCount;

                        // loops through row spans
                        for($r = 1; $r < $rowspan; $r++) {
                            $futureRows++;
                            if($colspan > 1) {
                                $tableCleaned[$futureRows][$colCount + 1] = $item;
                            } else {
                                $tableCleaned[$futureRows][$colCount] = $item;
                            }
                        }

                        // increases column count
                        $colCount++;
                    }

                    // sorts the row array by the column keys
                    ksort($tableCleaned[$rowCount]);
                }
                break;
            }
        }

        // sets row count
        if($this->headerRow) {
            $this->rowCount	= count($tableCleaned) - 1;
        } else {
            $this->rowCount	= count($tableCleaned);
        }

        $this->rawArray = $tableCleaned;
    } // prepareArray


    function createArray()
    {
        // defines array to store table data
        $tableData = array();

        // gets column headers
        if($this->headerRow) {
            // trims string
            $row = $this->rawArray[$this->headerRow];

            // sets column names array
            $columnNames = array();
            $uniqueNames = array();

            // loops over column names
            $colCount = 0;
            foreach($row as $cell) {
                $colCount++;

                $cell = strip_tags($cell);
                $cell = trim($cell);
                $cell = '';

                // saves name if there is one, otherwise save index
                if($cell) {
                    if(isset($uniqueNames[$cell])) {
                        $uniqueNames[$cell]++;
                        $cell .= ' ('.($uniqueNames[$cell] + 1).')';
                    } else {
                        $uniqueNames[$cell] = 0;
                    }

                    $columnNames[$colCount] = $cell;
                } else {
                    $columnNames[$colCount] = $colCount;
                }
            }

            // removes the headers row from the table
            unset($this->rawArray[$this->headerRow]);
        }

        // removes rows to drop
        foreach(explode(',', $this->dropRows) as $key => $value) {
            unset($this->rawArray[$value]);
        }

        // sets the end row
        if($this->maxRows) {
            $endRow = $this->startRow + $this->maxRows - 1;
        } else {
            $endRow = count($this->rawArray);
        }

        // loops over row array
        $rowCount = 0;
        $newRowCount = 0;
        foreach($this->rawArray as $row) {
            $rowCount++;

            // if the row was requested then add it
            if($rowCount >= $this->startRow && $rowCount <= $endRow) {
                $newRowCount++;

                // creates new array to store data
                $tableData[$newRowCount] = array();
                //$tableData[$newRowCount] = array();

                // sets the end column
                if($this->maxCols) {
                    $endCol = $this->startCol + $this->maxCols - 1;
                } else {
                    $endCol = count($row);
                }

                // loops over cell array
                $colCount = 0;
                $newColCount = 0;
                foreach($row as $cell) {
                    $colCount++;

                    // if the column was requested then add it
                    if($colCount >= $this->startCol && $colCount <= $endCol) {
                        $newColCount++;

                        if($this->extraCols) {
                            foreach($this->extraCols as $extraColumn) {
                                if($extraColumn['column'] == $colCount) {
                                    if(preg_match($extraColumn['regex'], $cell, $matches)) {
                                        if(is_array($extraColumn['names'])) {
                                            $this->extraColsCount = 0;
                                            foreach($extraColumn['names'] as $extraColumnSub) {
                                                $this->extraColsCount++;
                                                $tableData[$newRowCount][$extraColumnSub] = $matches[$this->extraColsCount];
                                            }
                                        } else {
                                            $tableData[$newRowCount][$extraColumn['names']] = $matches[1];
                                        }
                                    } else {
                                        $this->extraColsCount = 0;
                                        if(is_array($extraColumn['names'])) {
                                            $this->extraColsCount = 0;
                                            foreach($extraColumn['names'] as $extraColumnSub) {
                                                $this->extraColsCount++;
                                                $tableData[$newRowCount][$extraColumnSub] = '';
                                            }
                                        } else {
                                            $tableData[$newRowCount][$extraColumn['names']] = '';
                                        }
                                    }
                                }
                            }
                        }

                        if($this->stripTags) {
                            $cell = strip_tags($cell);
                        }

                        // sets the column key as the column number
                        $colKey = $newColCount;

                        // if there is a table header, use the column
                        // name as the key
                        if($this->headerRow) {
                            if(isset($columnNames[$colCount])) {
                                $colKey = $columnNames[$colCount];
                            }
                        }

                        // adds the data to the array
                        $tableData[$newRowCount][$colKey] = $cell;
                    }
                }
            }
        }

        $this->finalArray = $tableData;
        return $tableData;
    } // fn createArray


    function setSource($p_source)
    {
        $this->source = $p_source;
    } // fn setSource


    function setAnchor($p_anchor)
    {
        $this->anchor = $p_anchor;
    } // fn setAnchor


    function setAnchorWithin($p_set)
    {
        $this->anchorWithin = $p_set;
    } // fn setAnchorWithin


    function setHeaderRow($p_set)
    {
        $this->headerRow = $p_set;
    } // fn setHeaderRow


    function setStartRow($p_row_number)
    {
        $this->startRow = $p_row_number;
    } // fn setStartRow


    function setMaxRows($p_number_of_rows)
    {
        $this->maxRows = $p_number_of_rows;
    } // fn setMaxRows


    function setStartCol($p_col_number)
    {
        $this->startCol = $p_col_number;
    } // fn setStartCol


    function setMaxCols($p_number_of_cols)
    {
        $this->maxCols = $p_number_of_cols;
    } // fn setMaxCols


    function setStripTags($p_set)
    {
        $this->stripTags = $p_set;
    } // fn setStripTags

} // class HTMLTableExtractor

?>
