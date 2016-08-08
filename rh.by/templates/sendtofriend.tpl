{{ php }}
session_start();
$from_mail = $_REQUEST['from_email'];
$from_name = $_REQUEST['from_name']; // use both value's from your form
$to_name = $_REQUEST['to_name'];
$to_address = $_REQUEST['to_address'];
$subject = $_REQUEST['subject'];
$link = $_REQUEST['link'];
$body = $_REQUEST['body'];
$header = 'From: ' . "=?UTF-8?B?".base64_encode($from_name)."?=" . ' <' . $from_mail .'>
';
$header .= "MIME-Version: 1.0
";
$header .= "Content-Type: text/plain; charset=\"utf-8\"
";
$header .= "Content-Transfer-Encoding: 8bit
";
$subject = "Вы атрымалі артыкул з сайта Рэгіянальнай газеты ".date("d.m.Y");{{/php}}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
   <title>Послать материал другу</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <style type="text/css">
* {font-family:Arial;font-size:1em;}
      form { width: 20em; }
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
            $body = "Дабрыдзень ".$to_name."
Ваш сябар ".$from_name." прапаноўвае вам прачытаць артыкул на вэбсайце Рэгіянальнай газеты. Перайдзіце па гэтай спасылцы: http://".$link."

Яго каментар:".$body."";
if (mail($to_address, "=?UTF-8?B?".base64_encode($subject)."?=", $body, $header)) {
    echo 'Вы паспяхова адправілі спасылку сябру. <a href="javascript:window.close();">Зачыніць</a>';
}
         } else {
            echo 'Вы ўвялі няправільны код. Калі ласка <a href="javascript:history.back();">паспрабуйце зноў</a>.';
         }
      } else {
   {{ /php }}
   <form method="post" action="http://rh.by/templates/php/sendtofriend/sendtofriend.php">
      <fieldset>
         <legend>Паслаць матэрыял сябру</legend>
         <label for="from_name">Ваша імя:</label><input type="text" name="from_name" id="from_name" value="" />
<br/>
         <label for="from_email">Ваш email:</label><input type="text" name="from_email" id="from_email" value="" />
<br/>
         <label for="to_name">Імя сябра:</label><input type="text" name="to_name" id="to_name" value="" />
<br/>
         <label for="to_address">Email сябра:</label><input type="text" name="to_address" id="to_address" value="" />
<br/>
	<label for="body">Паведамленне:</label><input type="text" name="body" id="body" rows="40"/>
<br/>
	<input type="hidden" name="link" id="link" value="{{ $gimme->publication->site }}{{ uri options="article" }}" />
         <div id="security"><img src="/templates/php/sendtofriend/security-image.php?width=144" width="144" height="30" alt="Малюнак з кодам" />
</div>
         <label for="code">Увядзіце код:</label><input type="text" name="code" id="code" value="" />
         <input type="submit" name="login" id="login" value="Адправіць" />
      </fieldset>
   </form>
   {{ php }}
      }
   {{ /php }}
</body>

</html>