<?php

global $wixard;

// Defines directory separator sign
if(!defined('DS')) {
    define('DS', DIRECTORY_SEPARATOR);
}

$wixard['document_root'] = dirname(dirname(__FILE__));
$wixard['html_files_path'] = dirname($wixard['document_root']) . DS . 'xml-forest';
$wixard['feeds_cache'] = DS . 'usr' . DS . 'local' . DS . 'www' . DS . 'scripts' . DS . 'simplepie' . DS . 'cache';

?>
