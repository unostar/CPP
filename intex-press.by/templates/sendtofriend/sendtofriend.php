{{ php }}
// start PHP session
session_start();
$from_mail = $_REQUEST['from_email'];
$from_name = $_REQUEST['from_name']; // use both value's from your form
$to_name = $_REQUEST['to_name'];
$to_address = $_REQUEST['to_address'];
$subject = $_REQUEST['subject'];
$link = $_REQUEST['link'];
$body = $_REQUEST['body'];
$header = 'From: ' . "=?UTF-8?B?".base64_encode($from_name)."?=" . ' <' . $from_mail
.'>
';
$header .= "MIME-Version: 1.0
";
$header .= "Content-Type: text/plain; charset=\"utf-8\"
";
$header .= "Content-Transfer-Encoding: 8bit
";
$subject = "У Вас новое сообещение на сайте Intex-Press ".date("d.m.Y");
{{ /php }}

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <title>Послать материал другу</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <style type="text/css">
* {font-family:Arial;font-size:11px;}
      form { width: 300px; }
      fieldset { display: block; float: left; }
      legend { font-size: 1.2em; font-weight: bold; color: #000; }
      #security img { float: right; border: 1px solid #000; }
      label, input, #security img { margin: 5px 0; }
      input, #login { float: right; }
      label, #login { clear: both; }
      label { float: left; width: 7em; }
      #login { margin-top: 5px; }
   </style>
</head>
<body>
   {{ php }}
      // check for posted form
      if (isset($_POST['login'])) {
         // see if the code the user typed matched the generated code
         if (strtoupper($_POST['code']) == $_SESSION['code']) {
            $body = "Привет ".$to_name."
Ваш друг ".$from_name." послал Вам ссылку на сайт Intex-Press. Чтобы прочитать сообщение перейдите по ссылке: http://".$link."

Его комментарии:".$body."";

if (mail($to_address, "=?UTF-8?B?".base64_encode($subject)."?=", $body, $header)) {
    echo 'Вы успешно отправили ссылку Вашему другу.<a href="javascript:window.close();">Закрыть страницу</a>';
}
         } else {
            echo 'Вы ввели неправильный код. Пожалуйста, <a href="javascript:history.back();">попробуйте снова</a>.';
         }
      } else {
   {{ /php }}

   <form method="post" action="http://{{ $campsite->publication->site }}{{ uri options="template sendtofriend/sendtofriend.php"}}">
      <fieldset>
         <legend>Послать материал другу</legend>
         <label for="from_name">Ваше имя:</label><input type="text" name="from_name" id="from_name" value="" />
         <label for="from_email">Ваш email:</label><input type="text" name="from_email" id="from_email" value="" />
         <label for="to_name">Имя друга:</label><input type="text" name="to_name" id="to_name" value="" />
         <label for="to_address">Email друга:</label><input type="text" name="to_address" id="to_address" value="" />
    <label for="body">Сообщение:</label><input type="text" name="body" id="body" rows="40"/>
    <input type="hidden" name="link" id="link" value="{{ $campsite->publication->site}}{{uri options="article"}}" />
         <div id="security"><img src="/templates/sendtofriend/security-image.php?width=144" width="144" height="30" alt="Security Image" />
</div>
         <label for="code">Введите код:</label><input type="text" name="code" id="code" value="" />
         <input type="submit" name="login" id="login" value="Отослать" />
      </fieldset>
   </form>
   {{ php }}
      }
   {{ /php }}
</body>
</html>