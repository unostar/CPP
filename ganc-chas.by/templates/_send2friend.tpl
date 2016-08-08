{{assign var="article_name" value=$gimme->article->name}}
{{assign var="article_url" value="http://`$gimme->publication->site``$gimme->url->uri_path`"}}
{{php}}
if ($_POST['from'] && $_POST['to']){
  $from = filter_var($_POST['from'], FILTER_VALIDATE_EMAIL);
  $to = filter_var($_POST['to'], FILTER_VALIDATE_EMAIL);
  $from_text = $from ? '" value="'.$from : ' error" value="'.$_POST['from'];
  $to_text = $to ? '" value="'.$to : ' error" value="'.$_POST['to'];
}
if ($from && $to){
  $subject = 'Ваш сябар '.$from.' даслаў вам спасылку';
  $message = 'Ваш сябар '.$from.' даслаў вам спасылку:'."\r\n\r\nІнтэрнэт-выданне «Ганцавіцкі час»\r\nАртыкул: ".$this->get_template_vars('article_name')."\r\nСпасылка: ".$this->get_template_vars('article_url') . PHP_EOL . PHP_EOL;

  $headers = 'From: ' . $from . PHP_EOL;
  $headers .= 'MIME-Version: 1.0' . PHP_EOL;
  $headers .= 'Content-Type: text/plain; charset="utf-8"' . PHP_EOL;
  $headers .= 'Content-Transfer-Encoding: 8bit' . PHP_EOL . PHP_EOL;

  @ini_set('sendmail_from', $from);
  $send_status = mail($to,$subject,$message,$headers);
  @ini_restore('sendmail_from');
  $send_status = $send_status ? '<div class="send2friend_response success">Спасылка паспяхова адпраўлена</div>' : '<div class="send2friend_response error">Немагчыма адправіць спасылку. Паспрабуйце пазней.</div>';
}
$form = '<form action="#" method="post" id="send2friend_form">';
$form .= '<label for="from">Ваш E-mail: </label>';
$form .= '<input type="text" maxlength="35" size="20" name="from" class="text'.$from_text.'" />';
$form .= '<label for="to">E-mail сябра: </label>';
$form .= '<input type="text" maxlength="35" size="20" name="to" class="text'.$to_text.'" />';
$form .= '<input type="button" value="Адправіць" class="submit" name="submit" /></form>';
echo ( $send_status ? $send_status : $form );
{{/php}}
