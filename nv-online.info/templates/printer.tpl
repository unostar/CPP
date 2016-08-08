<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" media="screen, projection,print" href="/templates/styles/screen.css" />

<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="generator" content="Campsite" />

<title>{{ $gimme->article->name }} | Народная Воля</title>

</head>

<body  id="printer">

   <div id="logo">
      <img alt="Logo" src="/templates/images/logo-smaller.png" />&nbsp;&nbsp;&nbsp;Апублікавана ў "{{ $gimme->publication->name }}" (http://{{ $gimme->publication->site }})
   </div><!-- /#logo -->

<div class="clear"></div>

  <div class="story">
    <h1>{{ $gimme->article->name }}</h1>
    {{ if !($gimme->article->type_name == "static") }}<p class="uptitle">{{ if !($gimme->article->author->name == "") }}Aўтар: {{ $gimme->article->author->name }}<br />{{ /if }}{{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y. %H:%i" }}</p>{{ /if }}

{{ if $gimme->article->image2 }}<img class="artimage" alt="{{ $gimme->article->image2->description }}" src="{{ uri options="image 2" }}" />
<p><em>{{ $gimme->article->image2->description }}</em></p>{{ /if }}

<div class="clear"></div>

{{ if !($gimme->article->type_name == "static") }}
<div class="intro">{{ $gimme->article->intro }}</div>
{{ /if }}

<div class="full-text">{{ $gimme->article->full_text }}</div>

<div class="clear"></div>

<p id="em">Мае меркаваннi:</p>

<div class="clear"></div>

<form action="post">
    <textarea cols="60" rows="10">Тут Вы можаце пакiнуць свае меркаваннi цi каменты</textarea>
</form>

<div class="clear"></div>

</div><!-- /.story -->

<div id="footer">
<p><strong>{{ $gimme->publication->site }}</strong> / <span>Source URL: http://{{ $gimme->publication->site}}{{ uri options="article" }}<br />
© Copyright 2009 {{ $gimme->publication->name }}</span>
</div>
<!-- Yandex.Metrika counter -->
<div style="display:none;"><script type="text/javascript">
(function(w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter11339563 = new Ya.Metrika({id:11339563, enableAll: true});
        }
        catch(e) { }
    });
})(window, "yandex_metrika_callbacks");
</script></div>
<script src="//mc.yandex.ru/metrika/watch.js" type="text/javascript" defer="defer"></script>
<noscript><div><img src="//mc.yandex.ru/watch/11339563" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
</body>
</html>