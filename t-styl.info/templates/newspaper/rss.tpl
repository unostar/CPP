<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Твой стыль - rss</title>
{{ include file="newspaper/_html_head.tpl" }}
</head>
<body>
<div id="wrapper">
{{ include file="newspaper/_header.tpl" }}
{{ include file="newspaper/_top_menu_bar.tpl" }}

<div id="section-content" class="clearfix">
  <div class="section-content-columns">
    {{ include file="newspaper/front-column-1.tpl" }}
<div class="section-column-2 clearfix">
 <div class="column-2-content">
 <div class="main-box">
  <h2><span style="font-size:9px;">&lt;&lt;</span> RSS стужка <span style="font-size:9px;">&gt;&gt;</span></h2><br/>
  <p class="rss-feeds"><a href="http://{{$gimme->publication->site}}/index.rss">RSS усiх артыкулаў сайта</a></p><br/>
  <p class="byline" style="text-transform:uppercase;" >Артыкулы па рубрыкам:</p><br/>
  <p class="rss-feeds"><a href="http://{{$gimme->publication->site}}/index.rss?id=1">Рубрыка &quot;Навiны&quot;</a></p><br/>
  <p class="rss-feeds"><a href="http://{{$gimme->publication->site}}/index.rss?id=10">Рубрыка &quot;З месца&quot;</a></p><br/>
  <p class="rss-feeds"><a href="http://{{$gimme->publication->site}}/index.rss?id=20">Рубрыка &quot;Вір жыцця&quot;</a></p><br/>
  <p class="rss-feeds"><a href="http://{{$gimme->publication->site}}/index.rss?id=30">Рубрыка &quot;Гарадзенскі погляд&quot;</a></p><br/>
  <p class="rss-feeds"><a href="http://{{$gimme->publication->site}}/index.rss?id=40">Рубрыка &quot;Правінцыйны рэпартаж&quot;</a></p><br/>
  <p class="rss-feeds"><a href="http://{{$gimme->publication->site}}/index.rss?id=50">Рубрыка &quot;Абмяркуем&quot;</a></p><br/>
  <p class="rss-feeds"><a href="http://{{$gimme->publication->site}}/index.rss?id=60">Рубрыка &quot;пАгляд&quot;</a></p><br/>
  <p class="rss-feeds"><a href="http://{{$gimme->publication->site}}/index.rss?id=70">Рубрыка &quot;Культурыстыка&quot;</a></p><br/>
  <p class="rss-feeds"><a href="http://{{$gimme->publication->site}}/index.rss?id=80">Рубрыка &quot;ProСпорт&quot;</a></p><br/>
  <p class="rss-feeds"><a href="http://{{$gimme->publication->site}}/index.rss?id=90">Рубрыка &quot;У кадры&quot;</a></p><br/>
  <p class="rss-feeds"><a href="http://{{$gimme->publication->site}}/index.rss?id=100">Рубрыка &quot;А!ФІШКА&quot;</a></p><br/>
  <p class="rss-feeds"><a href="http://{{$gimme->publication->site}}/index.rss?id=110">Рубрыка &quot;Ёсць справа!&quot;</a></p><br/>
<p class="rss-feeds"><a href="http://{{$gimme->publication->site}}/index.rss?id=120">Рубрыка &quot;Падарожжа&quot;</a></p>
 </div>
</div>
</div>
    {{ include file="newspaper/section-column-3.tpl" }}
   {{ include file="newspaper/bottom-banner-article.tpl" }}
  </div>
</div>

{{ include file="newspaper/_footer.tpl" }}
</div>
</body>
</html>
