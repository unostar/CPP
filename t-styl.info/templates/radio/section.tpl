<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="copyright" content="Твой стыль радыё" />
<meta name="keywords" content="радыё,праграмы,новости,комментарии,каментары,вести,рубрыкi,падкаст,статья,артыкул,Гродно,навiны,Гародня" />
<meta name="description" content="Твой стыль - радыё навiны - {{ $gimme->section->name }}" />
<meta name="robots" content="all" />
{{ include file="radio/_html_head.tpl" }}
<title>Твой стыль - радыё навiны - {{ $gimme->section->name }}</title>
</head>

<body>
{{ include file="radio/_header.tpl" }}
<div id="wrapper">
  <div class="wrapper-content clearfix">
    <div class="top-line"></div>
{{if $gimme->section->number=="400"}}
    {{ include file="radio/section-cont-left-fanateka.tpl" }}
{{else}}
    {{ include file="radio/section-cont-left.tpl" }}
{{/if}}
    {{ include file="radio/section-cont-right.tpl" }}
    {{ include file="radio/program-slider.tpl" }}
  </div>
</div>
{{ include file="radio/_footer.tpl" }}
</body>
</html>
