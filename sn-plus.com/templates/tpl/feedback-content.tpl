{{ php }}

$random_hash = md5(date('r', time()));

if ($_POST['name']){
	$name = filter_var($_POST['name'], FILTER_SANITIZE_STRING);
	$name_status = $name ? 'value="'.$name.'"' : 'class="error" value="'.$_POST['name'].'"';
} elseif ($_POST) $name_status = 'class="empty"';

if ($_POST['email']){
	$email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);
	$email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
	$email_status = $email ? 'value="'.$email.'"' : 'class="error" value="'.$_POST['email'].'"';
} elseif ($_POST) $email_status = 'class="empty"';

if ($_POST['text']){
	$text = filter_var($_POST['text'], FILTER_SANITIZE_STRING);
	$text_status = $text ? '' : 'class="error"';
	$text_text = $text ? $text : $_POST['text'];
} elseif ($_POST) $text_status = 'class="empty"';

if ($name && $email && $text){
	$to = "snplus@mail.ru";
	$from = "Свободные новости <noreply@sn-plus.com>";
	$subject = "Сообщение с сайта sn-plus.com";
	$message = "С сайта sn-plus.com было отправлено сообщение.

";
	$message .= "Имя: ".$name."
";
	$message .= "E-mail: ".$email."
";
	$message .= "Сообщение:

".$text;

$message .= PHP_EOL;

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
$send_status = $send_status ? '<div class="feedback response"><p><span>&#10004;</span> Сообщение успешно отправлено.</p></div>' : '<div class="feedback response error"><p><span>&#10008;</span> Невозможно отправить сообщение, попробуйте позже.</p></div>';
}

$form = '
<form method="POST" class="feedback" id="message">
	<p>
		<label>ФИО:</label>
		<input type="text" name="name" required '.$name_status.'>
	</p>
	<p>
		<label>Email:</label>
		<input type="text" name="email" required '.$email_status.'>
	</p>
	<p>
		<label>Сообщение:</label>
		<textarea name="text" cols="30" rows="10" required '.$text_status.'>'.$text_text.'</textarea>
	</p>
	<p class="submit"><input type="submit" value="Отправить"></p>
</form>
';

echo ( $send_status ? $send_status : $form );

{{ /php }}
