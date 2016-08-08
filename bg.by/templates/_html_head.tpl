<title>{{if $gimme->article->defined}}{{$gimme->article->name}} - {{/if}}{{if $gimme->section->defined}}{{$gimme->section->name}} - {{/if}}{{$gimme->publication->name}}</title>
{{ if $gimme->article->defined }}
  <meta name="description" content="{{ $gimme->article->Intro|strip_tags|strip }}" />
{{ else }}
  <meta name="description" content="{{$siteinfo.description}}" />
{{ /if }}
<meta name="keywords" content="{{if $gimme->article->keywords}}{{$gimme->article->keywords}},{{/if}}{{$siteinfo.keywords}}" />
{{*<meta name="google-site-verification" content="JYz1DIThYCFRr_oDNRImgtTjmwvudVkBHIW2gh3-0Og" />*}}
<meta name="google-site-verification" content="q4Ff8prQWfNt_AVRfcJGcHIoew3RjE5gEAdlPIWxZGo" />
<link href="/templates/styles/brest.css?v={{php}}echo filemtime($_SERVER['DOCUMENT_ROOT'].'/templates/styles/brest.css');{{ /php }}" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" type="image/x-icon" href="/templates/images/favicon.ico" />
<link rel="alternate" type="application/rss+xml" title="{{$gimme->publication->name}} - Все новости Бреста" href="http://{{$gimme->publication->site}}/feed/index.rss" />
{{list_sections constraints="number greater 1 number smaller 100"}}
<link rel="alternate" type="application/rss+xml" title="{{$gimme->publication->name}} - {{$gimme->section->name}} Бреста" href="http://{{$gimme->publication->site}}/feed/{{$gimme->section->url_name}}.rss" />
{{/list_sections}}
{{* <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script> *}}
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.3/jquery-ui.min.js"></script>
<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script type="text/javascript" src="http://www.google.com/uds/solutions/slideshow/gfslideshow.js"></script>
<script type="text/javascript" src="/templates/javascript/functions.js?v={{php}}echo filemtime($_SERVER['DOCUMENT_ROOT'].'/templates/javascript/functions.js');{{ /php }}"></script>
<meta property="og:site_name" content="{{ $gimme->publication->name }}" />
{{ if $gimme->article->defined }}
  <meta name="author" content="{{ $gimme->article->author->name }}" />
  <meta property="og:title" content="{{ $gimme->article->name }}" />
  <meta property="og:type" content="article" />
  <meta property="og:url" content="{{ url options="article" }}" />
  <meta property="og:description" content="{{ $gimme->article->Intro|strip_tags|strip }}" />
  {{ if $gimme->article->has_image(2) }}<meta property="og:image" content="http://{{$gimme->publication->site}}{{ uri options="image 2" }}" />{{ /if }}
  <meta property="vk:title" content="{{ $gimme->article->name }}" />
  <meta property="vk:url" content="{{ url options="article" }}" />
  {{ if $gimme->article->has_image(2) }}<meta property="vk:image" content="http://{{$gimme->publication->site}}{{ uri options="image 2" }}" />{{ /if }}
  <meta property="vk:description" content="{{ $gimme->article->Intro|strip_tags|strip }}" />
{{ /if }}