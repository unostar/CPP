<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="copyright" content="Белорусы и рынок" />
{{if $gimme->article->keywords != ''}}<meta name="keywords" content="{{$gimme->article->keywords}}" />{{/if}}
<meta name="keywords" content="Беларусь, РБ, БР, белорусские, белорусский, цены, цена, банк, банки, рынок, предприятия, предприятие, компания, правительство, экономика, государства, президента, президент, президентом, газ, нефть, валюта, финансы, право, власти, власть, Минск" />
<title>{{$gimme->article->name}} - Белорусы и рынок. Еженедельная аналитическая газета для деловых людей.</title>
{{include file="_html-head.tpl"}}
</head>

<body>
<div id="wrapper">
{{ include file="banner-top.tpl" }}
{{ include file="_header.tpl" }}
{{ include file="_main-menu.tpl" }}
<div id="content-wrapper" class="clearfix">
  <div class="columns-wrapper clearfix">
    {{ include file="front-column-1.tpl" }}
    {{ include file="article-cont.tpl" }}
    {{ include file="front-column-3.tpl" }}
  </div><!-- /.columns-wrapper clearfix -->
  {{ include file="front-bottom-banner.tpl" }}
</div><!-- /#content-wrapper clearfix -->
</div><!-- /#wrapper -->
{{ include file="_footer.tpl" }}
</body>
</html>
