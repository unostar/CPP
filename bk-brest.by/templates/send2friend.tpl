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
  $subject = 'Ваш друг '.$from.' прислал вам ссылку';
  $message = 'Ваш друг '.$from.' прислал вам ссылку:'."\r\n\r\nИнтернет-издание «Брестский курьер»\r\nСтатья: ".$this->get_template_vars('article_name')."\r\nАдрес: ".$this->get_template_vars('article_url') . PHP_EOL . PHP_EOL;

  $headers = 'From: ' . $from . PHP_EOL;
  $headers .= 'MIME-Version: 1.0' . PHP_EOL;
  $headers .= 'Content-Type: text/plain; charset="utf-8"' . PHP_EOL;
  $headers .= 'Content-Transfer-Encoding: 8bit' . PHP_EOL . PHP_EOL;

  @ini_set('sendmail_from', $from);
  $send_status = mail($to,$subject,$message,$headers);
  @ini_restore('sendmail_from');
  $send_status = $send_status ? '<div class="send2friend_response success">Ссылка успешно отправлена</div>' : '<div class="send2friend_response error">Невозможно отправить ссылку. Попробуйте позже.</div>';
}
$form = '<form action="#" method="post" id="send2friend_form">';
$form .= '<label for="from">Ваш email: </label>';
$form .= '<input type="text" maxlength="35" size="20" name="from" class="text'.$from_text.'" />';
$form .= '<label for="to">Email друга: </label>';
$form .= '<input type="text" maxlength="35" size="20" name="to" class="text'.$to_text.'" />';
$form .= '<input type="button" value="Отправить" class="submit" name="submit" /></form>';
echo ( $send_status ? $send_status : $form );
{{/php}}
