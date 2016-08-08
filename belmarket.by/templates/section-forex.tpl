<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="copyright" content="Белорусы и рынок" />
<meta name="keywords" content="Беларусь, РБ, БР, белорусские, белорусский, цены, цена, банк, банки, рынок, предприятия, предприятие, компания, правительство, экономика, государства, президента, президент, президентом, газ, нефть, валюта, финансы, право, власти, власть, Минск" />
<title>Белорусы и рынок. Еженедельная аналитическая газета для деловых людей.</title>
{{ include file="_html-head.tpl" }}
</head>
<body>
<div id="wrapper">
{{ include file="banner-top.tpl" }}
{{ include file="_header.tpl" }}
{{ include file="_main-menu.tpl" }}
  <div id="content-wrapper" class="clearfix">
     <div class="columns-wrapper clearfix">
     {{ include file="front-column-1.tpl" }}
{{set_default_section}}
<div class="home-column-middle">
<div class="content-middle">
<div class="content-article-page">


<h2 class="top-news">{{ $gimme->section->name }}</h2><br />

<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="630" height="485" id="gr_eng9" align="middle">
<param name="allowScriptAccess" value="sameDomain" />
<param name="movie" value="http://www.fxclub.org/flash/gr_eng9rus_by.swf" /><param name="menu" value="false" /><param name="quality" value="high" /><param name="bgcolor" value="#f5f5f5" /><embed src="http://www.fxclub.org/flash/gr_eng9rus_by.swf" menu="false" quality="high" bgcolor="#f5f5f5" width="630" height="485" name="gr_eng9" align="middle" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
</object><br />

{{ list_articles length="1" order="byNumber desc" }}
<br />
<h3 class="top-title-article">{{ $gimme->article->name }}</h3>
<p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>

<div class="article-full" id="article-full">
{{ if $gimme->article->has_image(2) }}<div class="img-div"><img src="{{ uri options="image 2" }}" style="width:255px;" align="right" alt="{{ $gimme->article->image2->description }}" border="0" /><p class="author" style="padding:0;">{{ $gimme->article->image2->description }}</p></div>{{ /if }}
{{ if $gimme->article->Lead != "" }}<div class="intro" id="intro">{{ $gimme->article->Lead }}</div>{{ /if }}
{{ if $gimme->article->Related != "" }}<p>{{ $gimme->article->Related }}</p>{{ /if }}
<p id="text">{{ $gimme->article->Article_text }}</p>
</div>
{{ /list_articles }}

{{ set_default_section }}
{{ assign var="section" value=$gimme->section->number }}
{{ assign var="counter" value="1" }}
<div class="art_from_previous">
<div class="art_from_previous-content">
<h2 class="top-news">Обзор рынков Forex из предыдущих номеров</h2>
<div class="list-articles">
{{ list_issues order="bypublishdate desc" }}
{{ if $gimme->issue->is_current }}
{{ else }}
{{ list_sections constraints="number is $section"}}
{{ list_articles order="bypublishdate desc" }}
{{ if ($counter < 6) }}
{{ php }}
$flag = $this->get_template_vars('counter');
$this->assign('counter',$flag+1);
{{ /php }}
<p class="br-article">
<a href="{{ uri options="article" }}">{{ $gimme->article->name }}&nbsp;<span 
class="index-date">({{ $gimme->article->author->name }}{{$gimme->article->extended_author}}, {{ $gimme->issue->name 
}})</span></a><br/></p>
{{ /if }}
{{ /list_articles }}
{{ /list_sections }}
{{ /if }}
{{ /list_issues }}
</div>
</div>
</div>

{{ include file="section-banner-middle.tpl" }}

</div>
</div>
</div>
     {{ include file="front-column-3.tpl" }}
     </div>

       {{ include file="front-bottom-banner.tpl" }}

</div>
</div>
 {{ include file="_footer.tpl" }}
</body>
</html>