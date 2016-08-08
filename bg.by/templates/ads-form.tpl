<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>"Брестская газета"</title>
<link rel="stylesheet" href="/templates/phpscripts/adsmail/dd-formmailer.css" type="text/css" media="screen" />
<script src="/templates/javascript/jquery-1.2.6.pack.js" type="text/javascript"></script>
<script src="/templates/javascript/jquery.forms.js" type="text/javascript"></script>
{{ include file="_html_head.tpl" }}
</head>
<body>
<div id="wrapper">
  {{ include file="_header.tpl" }}
  <div id="main-content" class="clearfix">
    <div class="article-left-content">
      <div class="ticker">Отправить объявление в рубрику сайта &quot;Частные объявления&quot;</div>
      <div class="article-column" id="article-column">
      <div id="output">
      <div style="color:#d90000;">Внимание! В случае неполного заполнения графы «ФИО» и «Адрес» редакция оставляет за собой право не публиковать частное объявление!</div>
      {{php}}
         // including a php script directly from the template.
   include('templates/phpscripts/adsmail/ads-send.php');
      {{/php}}
      </div>
      </div>
      </div>
      {{ include file="section-cont-right.tpl" }}
    {{ include file="section-column-3.tpl" }}
  </div>
  {{ include file="_footer.tpl" }}
</div>
</body>
</html>
