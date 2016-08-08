<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru">
<head>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="Content-Language" content="{{ $gimme->language->code }}" />
  <meta name="description" content="{{$siteinfo.description}}" />
  <meta name="keywords" content="{{if $gimme->article->keywords}}{{$gimme->article->keywords}},{{/if}}{{$siteinfo.keywords}}" />
  
  <link rel="alternate" type="application/rss+xml" title="{{$gimme->publication->name}}" href="http://{{$gimme->publication->site}}/templates/feed/index.rss" />
  {{ local }}
  {{ set_current_issue }}
  {{list_sections constraints="number smaller 200"}}
  <link rel="alternate" type="application/rss+xml" title="{{$gimme->section->name}} | {{$gimme->publication->name}}" href="http://{{$gimme->publication->site}}/templates/feed/{{$gimme->section->url_name}}.rss" />
  {{/list_sections}}  
  {{ /local }}
  
  <link rel="shortcut icon" href="http://{{$gimme->publication->site}}/templates/images/favicon.ico" />  
  
  <title>{{if $gimme->article->defined}} {{$gimme->article->name}} | {{elseif $gimme->section->defined}} {{$gimme->section->name}} | {{/if}}{{$gimme->publication->name}}</title>   
  
  <script type="text/javascript" src="/templates/js/jquery-1.4.4.min.js"></script>
  <script type="text/javascript" src="/templates/js/jquery-ui-1.8.4.custom.min.js"></script> 
  <script type="text/javascript" src="/templates/js/functions.js?v={{ php }}echo filemtime($_SERVER['DOCUMENT_ROOT'].'/templates/js/functions.js');{{ /php }}"></script>    
  
  <link rel="stylesheet" type="text/css" media="screen, projection" href="/templates/styles/screen.css" />  
    
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-88760-21']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
var pp_gemius_identifier = new String('0tKVH__irbSmN7QnawW3NqblHSEs4u_81so1hrgCsY3.67');
var pp_gemius_hitcollector = 'gaby1.hit.gemius.pl';
//--><!]]>
</script>
<script type="text/javascript" src="/xgemius.js"></script>
</head> 