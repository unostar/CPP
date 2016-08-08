<?php

/**
 * Class HTMLTableDumper
 */
class HTMLTableDumper
{
    /**
     * @var string
     */
    private $tableAtts = 'border="1" cellpadding="2" cellspacing="0"';

    /**
     * @var string
     */
    private $tdAtts = 'valign="top"';

    /**
     * @var string
     */
    private $titleText = null;

    /**
     * @var integer
     */
    private $query_tabSize = 4;

    /**
     * @var boolean
     */
    private $query_expandFunctions = false;


    function __construct() {}


    function dump($input)
    {
        return $this->getDump($input);
    } // fn dump


    function getDump($input, $type = null)
    {
        if(!$type) {
            $inputtype = $this->checkType($input);
            $type = $inputtype[0];
        }

        switch ($type) {
        case 'array':
            $output = $this->dumpArray($input);
            break;
        case 'integer':
        case 'float':
        case 'string':
        case 'boolean':
        case 'null':
        case 'other':
            $output = $this->dumpStandard($input, $type);
            break;
        }

        return $output;
    } // fn getDump


    function dumpArray($input, $dimension = 1)
    {
        if($dimension > 5) {
            $class = 'dimension5';
        } else {
            $class = 'dimension'.$dimension;
        }

        $output = '<table '.$this->tableAtts.' class="array '.$class.'">';
        $output .= '<thead>';
        $output .= '<tr class="'.$class.' title">';
        $output .= '<th colspan="2"><span>Array&nbsp;:&nbsp;Dimension&nbsp;'.$dimension.'</span></th>';
        $output .= '</tr>';
        $output .= '</thead>';
        $output .= '<tbody>';

        foreach($input as $key => $value) {
            $output .= $this->row($key, $value, $dimension);
        }

        $output .= '</tbody>';
        $output .= '</table>';

        return $output;
    } // fn dumpArray


    function dumpStandard($input, $type)
    {
        $class = $type;
        $title = ucwords($type);
        $tag = 'span';

        switch($type) {
        case 'string':
            $subType = $this->subTypeString($input);
            break;
        case 'integer':
            $subType = $this->subTypeInteger($input);
            break;
        case 'boolean':
            if($input) {
                $input = 'True';
            } else {
                $input = 'False';
            }
            $class .= ' '.strtolower($input);
            break;
        case 'null':
            $input = 'Null';
            break;
        case 'other':
            ob_start();
            var_dump($input);
            $input = ob_get_contents();
            ob_end_clean();
            $tag = 'pre';
            break;
        }

        if(isset($subType)) {
            $input = $subType['data'];
            if(isset($subType['class'])) {
                $class .= ' '.$subType['class'];
            }
            if(isset($subType['title'])) {
                $title .= ' - '.$subType['title'];
            }
        }

        $output = '<'.$tag.' title="'.$this->title($title).'" class="'.$class.'">'.$input.'</'.$tag.'>';

        return $output;
    } // fn dumpStandard


    function title($title)
    {
        if($this->titleText) {
            $title = str_replace('[Actual]', $title, $this->titleText); 
            $this->titleText = null;
        }

        return $title;
    } // fn title


    function row($key, $value, $dimension = null)
    {
        $output = '<tr>';
        $output .= '<td '.$this->tdAtts.' class="id">';
        $key = str_replace(' ', '&nbsp;', $key);
        $output .= $key;
        $output .= '</td>';

        $type = $this->checkType($value);

        if($type[0] == 'array') {
            $output .= '<td class="box">';
            $output .= $this->dumpArray($value, $dimension + 1);
            $output .= '</td>';	
        } elseif($type[1]) {
            $output .= '<td class="box">';
            $output .= $this->getDump($value, $type[0]);
            $output .= '</td>';
        } else {
            $output .= '<td>';
            $output .= $this->getDump($value, $type[0]);
            $output .= '</td>';
        }

        $output .= '</tr>';

        return $output;
    } // fn row


    function checkType($input)
    {
        if(is_array($input)) {
            $type[0] = 'array';
            $type[1] = true;
        } elseif(@get_resource_type($input) == 'mysql result') {
            $type[0] = 'mysql';
            $type[1] = true;
        } elseif(@get_resource_type($input) == 'stream') {
            $type[0] = 'stream';
            $type[1] = true;
        } elseif(is_object($input)) {
            $type[0] = 'object';
            $type[1] = true;
        } elseif(is_int($input)) {
            $type[0] = 'integer';
            $type[1] = false;
        } elseif(is_float($input)) {
            $type[0] = 'float';
            $type[1] = false;
        } elseif(is_string($input)) {
            $type[0] = 'string';
            $type[1] = false;
        } elseif(is_bool($input)) {
            $type[0] = 'boolean';
            $type[1] = false;
        } elseif(is_null($input)) {
            $type[0] = 'null';
            $type[1] = false;
        } else {
            $type[0] = 'other';
            $type[1] = false;
        }

        return $type;
    } // fn checkType


    function subTypeString($input)
    {
        if(!$input) {
            $output['data'] = 'Empty&nbsp;String';
            $output['class'] = 'empty';
            $output['title'] = 'Empty';
        } elseif (preg_match('/^[^\s]*@[a-z][a-z0-9\.-]*\.[a-z]+$/is', $input)) {
            $output['data'] = '<a href="mailto: '.$input.'">'.$input.'</a>';
        } elseif (preg_match('/^(ht|f)tps?:\/\/[a-z][a-z0-9\.-]*\.[a-z]+$/is', $input)) {
            $output['data'] = '<a href="'.$input.'" target="_blank">'.$input.'</a>';
        } elseif (strlen($input) <= 100) {
            $output['data'] = str_replace(' ', '&nbsp;', $input);
        } else {
            $output['data'] = '<pre>'.htmlentities($input).'</pre>';
        }

        return $output;
    } // fn subTypeString


    function subTypeInteger($input)
    {
        if($input >= 946684800 && $input <= 2147471999) {
            $date = date('Y-m-d H:i:s', $input);
            $date = str_replace(' ', '&nbsp;', $date);
            $output['data'] = $input.' <span class="smalltext">('.$date.')</span>';
            $output['class'] = 'timestamp';
            $output['title'] = 'Timestamp';
        } else {
            $output['data'] = $input;
        }

        return $output;
    } // fn subTypeInteger

} // class HTMLTableDumper

?>