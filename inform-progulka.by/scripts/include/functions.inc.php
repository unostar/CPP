<?php

require_once('config.inc.php');

function write($p_content, $p_file_name)
{
    global $wixard;

    $html_file_path = $wixard['html_files_path'] . DS . $p_file_name;

    if ((file_exists($html_file_path) && !is_writable($html_file_path))
            || !is_writable($wixard['html_files_path'])) {
        exit_error('Could not write html file');
    }

    if (file_put_contents($html_file_path, $p_content) == false) {
        exit_error('');
    }

    return true;
} // fn write


function remove_html_file($p_file_path)
{
    if (!file_exists($p_file_path)) {
        return;
    }

    return unlink($p_file_path);
} // fn remove_html_file


function exit_error($p_message)
{
    print($p_message);
    exit;
} // fn exit_error


function trimall($str, $charlist = " \t\n\r\0\x0B")
{
  return str_replace(str_split($charlist), '', $str);
}


function currency_format($p_number)
{
    return number_format($p_number, 2, '.', '');
} // fn currency_format


?>
