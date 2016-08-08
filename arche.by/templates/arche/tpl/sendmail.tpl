{{if $smarty.get.type}}
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>{{$gimme->publication->name}} - Кантакты</title>
<meta name="description" content="{{$siteinfo.description}}" />
<meta name="keywords" content="{{$siteinfo.keywords}}" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon" href="http://{{$gimme->publication->site}}/favicon.ico" />
<style type="text/css">
html, body, div, span, object, iframe,h1, h2, h3, h4, h5, h6, p, blockquote, pre,abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp,small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li,fieldset, form, label, legend,table, caption, tbody, tfoot, thead, tr, th, td,article, aside, canvas, details, figcaption, figure,footer, header, hgroup, menu, nav, section, summary,time, mark, audio, video {margin: 0; padding: 0; border: 0; font-size: 100%; font: inherit; vertical-align: baseline;}
.send_letter form {width: 90%; margin: 0 auto; padding: 10px 10px 0 10px; text-align:center;}
.send_letter fieldset {border: none;}
.send_letter label {color:#808080;font-size:14px;float: left;clear:left;text-align:left;}
.send_letter input[type=text], .send_letter textarea {margin-bottom: 16px;border:1px solid #CCCCCC;color:#6E6E6E;font:15px "Helvetica Neue",Arial,Helvetica,Geneva,sans-serif;padding:5px;width:97%;}
.send_letter textarea {height: 200px;}
#recaptcha_area {clear: both; margin: 0 auto; padding: 10px 0 0 5px;}
.recaptchatable label.recaptcha_input_area_text {float: none;}
.send_letter input[type=file] {float: left;}
.send_letter .attachment {display: block; float: left; margin: -1px 5px 0 3px; width: 24px; height: 24px; background:url(/templates/arche/img/attachment.png) no-repeat;}
.send_letter button[type="submit"] {float: right;}
.send_letter input.error {font-weight:bold; color:#ff0000;}
.send_letter .empty {background-color: #ffe9e9;}
.response {margin: 10% auto 0 auto; text-align: center; font-size: 1.2em; line-height: 1em; font-weight: bold; color: #3D3832;}
.response span {font-size: 1.6em; font-weight: bold; color: #50AA50; margin-right: 0.2em;}
.response.error span {color: #D61A1A;}
</style>
<script type="text/javascript">
var RecaptchaOptions = {
  custom_translations : {
    instructions_visual : "Увядзіце два словы:",
    instructions_audio : "Увядзіце восем лікаў:",
    play_again : "Прайграць зноўку",
    cant_hear_this : "Запампаваць у фармаце MP3",
    visual_challenge : "Загрузіць візуальную задачу",
    audio_challenge : "Загрузіць гукавую задачу",
    refresh_btn : "Загрузіць новую задачу",
    help_btn : "Дапамога",
    incorrect_try_again : "Няверна. Паўтарыце."
  },
  lang: 'ru',
  theme: 'white'
};
</script>
</head>
<body>
{{/if}}
{{php}}
$random_hash = md5(date('r', time()));
require_once('/var/www/arche/campsite/templates/arche/php/recaptchalib.php');
$publickey = "6Lck5MYSAAAAAAO6ECx5jLNf2F1kl2x9l-xbVoip";
$privatekey = "6Lck5MYSAAAAABEnx5fj5p2s17proSKHAmhjcvfX";
if ($_POST["recaptcha_response_field"]) {
  $resp = recaptcha_check_answer ($privatekey, $_SERVER["REMOTE_ADDR"], $_POST["recaptcha_challenge_field"], $_POST["recaptcha_response_field"]);
  $recaptcha = $resp->is_valid ? true : false;
}

$type = $_GET['type'] ? filter_var($_GET['type'], FILTER_SANITIZE_STRING) : $this->get_template_vars('type');

if ($_GET['type']): $type = filter_var($_GET['type'], FILTER_SANITIZE_STRING);
elseif ($_POST['type']): $type = filter_var($_POST['type'], FILTER_SANITIZE_STRING);
elseif ($this->get_template_vars('type')): $type = $this->get_template_vars('type');
endif;

switch ($type) {
  case 'editorial':
    $topic = $_GET['topic'] ? " - " . filter_var($_GET['topic'], FILTER_SANITIZE_STRING) : " - Ліст у рэдакцыю";
    $show_name = true;
    $show_email = false; $email = true;
    $show_text = true;
    $show_attachment = true;
    $show_recaptcha = true;
    break;
  case 'subscription':
    $topic = $_GET['topic'] ? " - " . filter_var($_GET['topic'], FILTER_SANITIZE_STRING) : " - Падпіска на абнаўлення";
    $show_name = false; $name = true;
    $show_email = true;
    $show_text = false; $text = true;
    $show_attachment = false;
    $show_recaptcha = false; $recaptcha = true;
    break;
  default:
    $topic = "";
    $show_name = false; $name = true;
    $show_email = false; $email = true;
    $show_text = true;
    $show_attachment = false;
    $show_recaptcha = true;
}
    

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

if ($_FILES['attachment']['tmp_name'] != "" && $_FILES['attachment']['size'] > 0 && $_FILES['attachment']['size'] < 3145729 && $_FILES['attachment']['error'] == UPLOAD_ERR_OK){
  $attachment = chunk_split(base64_encode(file_get_contents($_FILES['attachment']['tmp_name'])));
  $content.= "--PHP-mixed-".$random_hash.PHP_EOL;
  $content.= "Content-Type: ".$_FILES['attachment']['type']."; name=\"".$_FILES['attachment']['name']."\"".PHP_EOL;
  $content.= "Content-Transfer-Encoding: base64".PHP_EOL;
  $content.= "Content-Disposition: attachment".PHP_EOL;
  $content.= $attachment;
  $attachment = $content;
}

if ($name && $email && $text && $recaptcha){
  $to = "blackpig@tut.by";
  $from = "Arche.by <noreply@arche.by>";
  $subject = 'Паведамленне з сайта arche.by'.$topic;
  $message = "З сайта arche.by была адпраўлена паведамленне.

";
  if ($show_name) $message .= "Імя: ".$name."
";
  if ($show_email) $message .= "E-mail: ".$email."
";
  if ($show_text) $message .= "Паведамленне:

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
  $send_status = $send_status ? '<div class="response"><span>&#10004;</span> Паведамленне паспяхова адпраўлена.</div>' : '<div class="response error"><span>&#10008;</span> Немагчыма адправіць паведамленне. Паспрабуйце пазней.</div>';
}


$form  = '<div class="send_letter">';
$form .= '<form enctype="multipart/form-data" method="POST">';
$form .= '<input type="hidden" name="type" value="'.$type.'" />';
$form .= '<fieldset>';
if ($show_name)
  $form .= '<label>Ваша імя: </label><input type="text" maxlength="35" size="20" name="name" '.$name_status.' />';
if ($show_email)
  $form .= '<label>Ваш E-mail: </label><input type="text" maxlength="35" size="20" name="email" '.$email_status.' />';
if ($show_text)
  $form .= '<label>Паведамленне: </label><textarea cols="1" rows="1" name="text" id="text" '.$text_status.'>'.$text_text.'</textarea>';
if ($show_attachment)
  $form .= '<span class="attachment"></span><input type="hidden" name="MAX_FILE_SIZE" value="3145728" /><input type="file" name="attachment" title="Максімальны памер - 3Mb" />';
$form .= ' <button name="submit" type="submit">Адправіць</button>';
if ($show_recaptcha)
  $form .= recaptcha_get_html($publickey,$resp->error);
$form .= '</fieldset>';
$form .= '</form>';
$form .= '</div>';


echo ( $send_status ? $send_status : $form );

{{/php}}
{{if $smarty.get.type}}
</body>
</html>
{{/if}}