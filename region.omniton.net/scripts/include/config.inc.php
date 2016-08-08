<?php

global $wixard;

// Defines directory separator sign
if(!defined('DS')) {
    define('DS', DIRECTORY_SEPARATOR);
}

$wixard['document_root'] = dirname(dirname(__FILE__));
$wixard['html_files_path'] = DS . 'var' . DS . 'www' . DS . 'xml-forest';
$wixard['feeds_cache'] = DS . 'var' .DS . 'www' . DS . 'scripts' . DS . 'simplepie' . DS . 'cache';

?>
