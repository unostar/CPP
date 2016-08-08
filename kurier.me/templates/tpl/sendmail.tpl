{{if $smarty.get.type}}
{{php}}header('X-UA-Compatible: IE=edge,chrome=1');{{/php}}
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>{{$gimme->publication->name}} - Контакты</title>
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
.send_letter .attachment {display: block; float: left; margin: -1px 5px 0 3px; width: 24px; height: 24px; background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAADfklEQVR4nL1Vz2tcVRT+vvdekpeYMGkMhppismgxIpaCpFVEQQUHNLoRBEEXKoVutIvin+BOQUHI3mXQOkpQYmuxipFCoVZ0oGga/JG0cUabjO0kM/Pu/Vy8e9970wxiF3pn8c693HO+c77znTvAf7x4qw6vnXhlbObg5AvDpYH7blzf2bz03dWPf1mpLZ/8oGJ63Q9vJfgbb504/ORzh74avK3vkfpGozM00jfzQHn69TAKJkqDk2eqP1STm32ifxv86LEXRx56Yv/7F75Z/f7rz1aOh2F4GUCwZyIuP/Xy3e9dXWv8NDc39/bi4qKKfgSAhYWFV8fHxw8DgKQe4YF2UNs7dEfjsd+re74olUrrJCUAspbxaPJwc7s5oO3hz8MwtJBQqVTemZ+fPx8BwNTU1OOzs7PPAKByBAoQ0i1X6+f08/ollMvlR6O+QJf/XOaN1jXd3n8P7hw7QBIC+Lxz4dLS0hkA54NiNcqrcunJ2YIxCQVLkvix/iVXrnyLem2L1c2PuFFbc/6iJBZZyAAkCRLkVppJtmCU/iRhc+eK4s4kjux/Vgnaqm+tF+9KqW/eZBcbgDwYsp2zrQyMTSAJie2AwRCiKELbtGFk0hjufrGLBRWJ7gILIPTARoZGGQCVBmXbtGBpIWX+uwHkqHEBU3oA+kNINNYosQkksGM7ojWUpFbSgg0tld+FlA9wVoELCN9UB5xVY6xh4ijqmDaD1E4rCCwkMOO+UEJWQdolEHnaeTUCE5uoYzoQxGG7T0E0QvgKIkvJOuEJUJ5kXkGxSY734tfYBB3ThiTMTj8NQTDGoG1asNbCusyV+RVk6nrA7AtnF3Q9EJR4PdjgVuMaGJABA/zWqLLZbnIoHPX+u+Yg8nJ0dNBNA5CqQr5pU6VDurDxKT759U0e+OtBNc0mL/5xShPb92Pf3mn66YFLrLvJ8oORlueod9/0LB4YRPmu41hePYmLa2eBJMRM3xyOHCwjjgfzWUoBsj67JnvFKFODA6AHEMTRkTGU730JO60dAkB/fz9JepEw4z/dFynyc1CkCHSPRZdNknEcp4rzD4PcI+mE4uW9i6JuatB91sPuokR++rtV1EVRIXMUMveBetl09DjFFUBuHjRXLD1bmQ0v4WznbWbEStmz4qXuESIAqFQ+fPf06VNn8we1+1+t1/k/nwH1eu0c/o/1Nw1ZTXJG7uCtAAAAAElFTkSuQmCC) no-repeat;}
.send_letter button[type="submit"] {float: right;}
.send_letter input.error {font-weight:bold; color:#ff0000;}
.send_letter .empty {background-color: #ffe9e9;}
.response {margin: 10% auto 0 auto; text-align: center; font-size: 1.2em; line-height: 1em; font-weight: bold; color: #3D3832;}
.response span {font-size: 1.6em; font-weight: bold; color: #50AA50; margin-right: 0.2em;}
.response.error span {color: #D61A1A;}
</style>
<script type="text/javascript">var RecaptchaOptions = {lang: 'ru', theme: 'clean'};</script>
</head>
<body>
{{/if}}
{{php}}
$random_hash = md5(date('r', time()));
require_once('/var/www/vitkur/campsite/templates/php/recaptchalib.php');
$publickey = "6Lcn688SAAAAACHHbBTlfqW2aEpxx_8V_iG3ILdT";
$privatekey = "6Lcn688SAAAAADVRykPnIvhH30bpUZ8YFJKcjtmQ";
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
    $topic = $_GET['topic'] ? " - " . filter_var($_GET['topic'], FILTER_SANITIZE_STRING) : " - Письмо в редакцию";
    $show_name = true;
    $show_email = false; $email = true;
    $show_text = true;
    $show_attachment = true;
    $show_recaptcha = true;
    break;
  case 'author':
    $topic = $_GET['name'] ? " - Письмо для " . filter_var($_GET['name'], FILTER_SANITIZE_STRING) : " - Письмо автору";
    $show_name = true;
    $show_email = true;
    $show_text = true;
    $show_attachment = false;
    $show_recaptcha = true;
    break;
  case 'subscription':
    $topic = $_GET['topic'] ? " - " . filter_var($_GET['topic'], FILTER_SANITIZE_STRING) : " - Подписка на обновления";
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
  $to = "kurier.me@gmail.com";
  $from = "Витебский Курьер <noreply@kurier.me>";
  $subject = 'Сообщение с сайта kurier.me - '.$topic;
  $message = "С сайта kurier.me было отправлено сообщение.

";
  if ($show_name) $message .= "Имя: ".$name."
";
  if ($show_email) $message .= "E-mail: ".$email."
";
  if ($show_text) $message .= "Сообщение:

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
  $send_status = $send_status ? '<div class="response"><span>&#10004;</span> Сообщение успешно отправлено.</div>' : '<div class="response error"><span>&#10008;</span> Невозможно отправить сообщение, попробуйте позже.</div>';
}


$form  = '<div class="send_letter">';
$form .= '<form enctype="multipart/form-data" method="POST">';
$form .= '<input type="hidden" name="type" value="'.$type.'" />';
$form .= '<fieldset>';
if ($show_name)
  $form .= '<label>Ваше имя: </label><input type="text" maxlength="35" size="20" name="name" '.$name_status.' />';
if ($show_email)
  $form .= '<label>Ваш E-mail: </label><input type="text" maxlength="35" size="20" name="email" '.$email_status.' />';
if ($show_text)
  $form .= '<label>Сообщение: </label><textarea cols="1" rows="1" name="text" id="text" '.$text_status.'>'.$text_text.'</textarea>';
if ($show_attachment)
  $form .= '<span class="attachment"></span><input type="hidden" name="MAX_FILE_SIZE" value="3145728" /><input type="file" name="attachment" title="Максимальный размер - 3Mb" />';
$form .= ' <button name="submit" type="submit" class="button">Отправить</button>';
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