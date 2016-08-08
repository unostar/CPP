<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="be">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="Content-Language" content="be" />
  <title>{{$gimme->publication->name}}{{if $gimme->article->defined}} - {{$gimme->article->name}}{{elseif $gimme->section->defined}} - {{$gimme->section->name}}{{/if}}</title>
  <meta name="description" content="{{$siteinfo.description}}" />
  <meta name="keywords" content="{{if $gimme->article->keywords}}{{$gimme->article->keywords}},{{/if}}{{$siteinfo.keywords}}" />
{{if $gimme->article->defined}}
  <meta property="og:title" content="{{$gimme->article->name|escape:'html':'utf-8'}}" />
{{if $gimme->section->number != 150}}  <meta property="og:description" content="{{$gimme->article->intro|strip_tags:false|strip|escape:'html':'utf-8'}}" />{{/if}}
  <meta property="og:url" content="http://{{$gimme->publication->site}}/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" />
  <meta property="og:type" content="article" />
{{if $gimme->article->has_image(2)}}  <meta property="og:image" content="{{$gimme->article->image2->imageurl}}" />
{{elseif $gimme->section->number == 150 && $gimme->article->has_image(3)}} <meta property="og:image" content="{{$gimme->article->image3->imageurl}}" />
{{/if}}
{{/if}}
  <meta property="og:site_name" content="Gorad.by" />
  <meta property="fb:admins" content="667609697" />
  <meta property="fb:page_id" content="394031152526" />
  <link rel="shortcut icon" href="http://{{$gimme->publication->site}}/favicon.ico" />
  <link rel="alternate" type="application/rss+xml" title="{{$gimme->publication->name}}" href="http://feeds.feedburner.com/Goradby" />
{{* <link rel="alternate" type="application/rss+xml" title="{{$gimme->publication->name}}" href="http://{{$gimme->publication->site}}/feed/index.rss" /> *}}
{{list_sections constraints="number not 100 number not 120 number not 140"}}
  <link rel="alternate" type="application/rss+xml" title="{{$gimme->publication->name}} - {{$gimme->section->name}}" href="http://{{$gimme->publication->site}}/feed/{{$gimme->section->url_name}}.rss" />
{{/list_sections}}
  <link rel="stylesheet" href="http://{{$gimme->publication->site}}/templates/css/{{if $gimme->template->name=="print.tpl"}}print.css{{else}}main2.css?v={{ php }}echo filemtime($_SERVER['DOCUMENT_ROOT'].'/templates/css/main2.css');{{ /php }}{{/if}}" type="text/css" />
{{*<!-- {{ php }}
  $url = "/templates/css/main.css";
  $path = pathinfo($url);
  $ver = '.'.filemtime($_SERVER['DOCUMENT_ROOT'].$url).'.';
  echo $path['dirname'].'/'.str_replace('.', $ver, $path['basename']);
{{ /php }} -->*}}
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>
  <script type="text/javascript" src="http://{{$gimme->publication->site}}/templates/js/functions.js?v={{ php }}echo filemtime($_SERVER['DOCUMENT_ROOT'].'/templates/js/functions.js');{{ /php }}"></script>

  {{* Facebook *}}
  <script src="http://connect.facebook.net/ru_RU/all.js#xfbml=1"></script>
  {{* Кнопка «Мне нравится» — В Контакте *}}
  <script type="text/javascript" src="http://userapi.com/js/api/openapi.js?34"></script>
  <script type="text/javascript">VK.init({apiId: 2248514, onlyWidgets: true});</script>
{{if $gimme->article->defined}}
  {{* Кнопка «Поделиться» — Одноклассники 
  <link href="http://stg.odnoklassniki.ru/share/odkl_share.css" rel="stylesheet">
  <script src="http://stg.odnoklassniki.ru/share/odkl_share.js" type="text/javascript" ></script>
  <script type="text/javascript">ODKL.init();</script>*}}
  {{* Кнопка «+1» — Google *}}
  <script type="text/javascript" src="http://apis.google.com/js/plusone.js">{lang: 'ru'}</script>
{{/if}}

  {{* Виджеты твиттера *}}
  <script src="http://platform.twitter.com/widgets.js" type="text/javascript"></script>

  <script type="text/javascript" src="http://openx.omniton.net/delivery/spcjs.php?id=15"></script>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
var pp_gemius_identifier = new String('0tVFL2rIoXJwJ0Ki.gEEafTX7FPpZqy28dyh.aSkYVH.y7');
var pp_gemius_hitcollector = 'gaby1.hit.gemius.pl';
//--><!]]>
</script>
<script type="text/javascript" src="/xgemius.js"></script>

</head>

