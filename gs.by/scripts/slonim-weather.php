<?php
exit();
// includes general purpose functions
require_once('include/functions.inc.php');

// includes the rss parser
require_once('simplepie/simplepie.inc');

// defines the URL to get the feeds from
$url = 'http://informer.gismeteo.by/rss/11811.xml';

// parses the feed
$feed = new SimplePie($url, $wixard['feeds_cache']);
$feed->handle_content_type();

$items = $feed->get_items();
$nr_of_items = sizeof($items);
$data = array();
$cnt = 1;
foreach ($items as $item) {
    if ($cnt == $nr_of_items) {
        $title = $item->get_title();
        $desc = $item->get_description();

        // gets the time
	preg_match('/\s[^\s]+\s/', $title, $t_match);
        $data['time'] = trim($t_match[0]);

        // gets the temperture
	preg_match('/\s[-+0].[^,]+/', $desc, $w_match);
	$data['temperature'] = trim($w_match[0]);
    }
    $cnt++;
}

if (empty($data) || !isset($data['time']) || !isset($data['temperature'])) {
    exit;
}

// gets the table layout
$html = layout($data);

// writes the content to the file
write($html, 'slonim-weather.html');


/**
 * Returns the generated html code.
 *
 * @param array $p_data
 */
function layout($p_data)
{
    $content = "<p class=\"widget-item uppercase\">Слоним " . $p_data['temperature'] . "</p>\n";

    return $content;
} // fn layout

?>
