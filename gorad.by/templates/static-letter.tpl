{{php}}
$random_hash = md5(date('r', time()));

if ($_POST['name']){
  $name = filter_var($_POST['name'], FILTER_SANITIZE_STRING);
  $name_status = $name ? 'value="'.$name.'"' : 'class="error" value="'.$_POST['name'].'"';
}

if ($_POST['email']){
  $email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);
  $email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
  $email_status = $email ? 'value="'.$email.'"' : 'class="error" value="'.$_POST['email'].'"';
}

if ($_POST['text']){
  $text = filter_var($_POST['text'], FILTER_SANITIZE_STRING);
  $text_status = $text ? '' : 'class="error">';
  $text_text = $text ? $text : $_POST['text'];
}

if ($_FILES['attachment']['tmp_name'] != "" && $_FILES['attachment']['size'] > 0 && $_FILES['attachment']['size'] < 3145729 && $_FILES['attachment']['error'] == UPLOAD_ERR_OK){
  $attachment = chunk_split(base64_encode(file_get_contents($_FILES['attachment']['tmp_name'])));
  $content.= "--PHP-mixed-".$random_hash.PHP_EOL;
  $content.= "Content-Type: ".$_FILES['attachment']['type']."; name=\"".$_FILES['attachment']['name']."\"".PHP_EOL;
  $content.= "Content-Transfer-Encoding: base64".PHP_EOL;
  $content.= "Content-Disposition: attachment".PHP_EOL;
  $content.= $attachment;
  $attachment = $content;
}

if ($name && $email && $text){
  $to = "goradby@gmail.com";
  $from = "Gorad.by <noreply@gorad.by>";
  $subject = 'Паведамленне з сайта gorad.by';
  $message = "З сайта gorad.by была адпраўлена паведамленне.\r\n\r\nІмя: ".$name."\r\nE-mail: ".$email."\r\nПаведамленне:\r\n".$text . PHP_EOL;
  $headers = "From: " . $from . PHP_EOL;
  $headers.= "Content-Type: multipart/mixed; boundary=\"PHP-mixed-" . $random_hash . "\"" . PHP_EOL;
  $content = "--PHP-mixed-".$random_hash.PHP_EOL;
  $content.= "Content-Type: multipart/alternative; boundary=\"PHP-alt-".$random_hash."\"".PHP_EOL;
  $content.= "--PHP-alt-".$random_hash.PHP_EOL;
  $content.= "Content-Type: text/plain; charset=\"utf-8\"".PHP_EOL;
  $content.= "Content-Transfer-Encoding: 8bit".PHP_EOL;
  $content.= $message.PHP_EOL;
  $content.= "--PHP-alt-".$random_hash."--".PHP_EOL;
  $content.= $attachment.PHP_EOL;
  $content.= "--PHP-mixed-".$random_hash."--".PHP_EOL;

  @ini_set('sendmail_from', $from);
  $send_status = mail($to,$subject,$content,$headers);
  @ini_restore('sendmail_from');
  $send_status = $send_status ? '<div class="send_letter c-article"><p><span class="ui-icon ui-icon-circle-check"></span> Паведамленне паспяхова адпраўлена.</p></div>' : '<div class="send_letter c-article"><p><span class="ui-icon ui-icon-alert"></span> Немагчыма адправіць паведамленне. Паспрабуйце пазней.</p></div>';
}


$form  = '<div class="send_letter">';
$form .= '<form enctype="multipart/form-data" method="POST">';
$form .= '<fieldset>';
$form .= '<label>Ваша імя: </label>';
$form .= '<input type="text" maxlength="35" size="20" name="name" '.$name_status.' />';
$form .= '<label>Ваш E-mail: </label>';
$form .= '<input type="text" maxlength="35" size="20" name="email" '.$email_status.' />';
$form .= '<label>Паведамленне: </label>';
$form .= '<textarea cols="1" rows="1" name="text" id="text" '.$text_status.'>'.$text_text.'</textarea>';
$form .= '<span class="attachment"></span><input type="hidden" name="MAX_FILE_SIZE" value="3145728" /><input type="file" name="attachment" title="Максімальны памер - 3Mb" />';
$form .= '<span class="button-main"><input type="submit" value="Адправіць" class="button-main-i" name="submit" /></span>';
$form .= '</fieldset>';
$form .= '</form>';
$form .= '</div>';

echo ( $send_status ? $send_status : $form );

{{/php}}
