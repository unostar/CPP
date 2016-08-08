<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" media="screen, projection" href="/templates/styles/screen.css" />
<link rel="stylesheet" type="text/css" media="print" href="/templates/styles/print.css" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="generator" content="Campsite" />
{{ include file="_html_head.tpl" }}
<script type="text/javascript" src="/templates/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="/templates/js/jquery-ui-1.7.1.custom.min.js"></script>
<script type="text/javascript">$(document).ready(function(){$('#polosa').tabs();});</script>
<style type="text/css">
#polosa .meat-item-uphead {display:block;float:left;padding:0 14px;}
#polosa .meat-item-uphead a {margin:0;padding:0 5px;text-align:center;}
#polosa .ui-tabs-nav li {margin:0;}
#polosa .a_img {width:100px;height:100px;float:left;margin:0 10px 30px 0;}
</style>
<title>Народная Воля</title>
</head>

<body id="home"><a name="top"></a>
{{ include file="header.tpl" }}
<div id="wrap">
{{ include file="ticker.tpl" }}
<div id="meat">
<div id="section-name"><p>Свежы нумар: {{ $gimme->issue->name }}</p></div>
<div id="meat-left">

<div class="meat-item">
<div id="polosa" class="meat-item-inner">
<div id="logorow"><img alt="logo" src="/templates/images/logo-smaller.png"  /></div>

{{ set_section number="200" }}
{{ set_topic identifier="6" }}

<ul class="ui-tabs-nav">
{{ list_subtopics order="bynumber asc" }}
{{ if ($gimme->topic->name == "9")||($gimme->topic->name == "10")||($gimme->topic->name == "11")||($gimme->topic->name == "12") }}{{ else }}
<li><div class="meat-item-uphead"><a href="#polosa-{{$gimme->topic->name}}">{{ $gimme->topic->name }} паласа</a></div></li>
{{ /if }}
{{ /list_subtopics }}
</ul>

{{ list_subtopics order="bynumber asc" }}
{{ if ($gimme->topic->name == "9")||($gimme->topic->name == "10")||($gimme->topic->name == "11")||($gimme->topic->name == "12") }}{{ else }}
<div id="polosa-{{$gimme->topic->name}}">
  {{ list_articles constraints="type is A_text" }}
  <div style="display:block;clear:both;margin-bottom:40px;">
      {{ if $gimme->article->has_image(4) }}<img class="a_img" src="{{uri options="image 4"}}" alt="{{$gimme->article->image4->description}}" />{{/if}}
      {{ if $gimme->article->rubric }}<p class="pisao"><strong>{{ $gimme->article->rubric }}</strong></p>{{ /if }}
      <h4><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h4>
      {{ if $gimme->article->author->name }}<p class="pisao">{{ $gimme->article->author->name }}</p>{{ /if }}
      {{$gimme->article->intro}}
  </div>
  {{ /list_articles }}
</div>
{{ /if }}
{{ /list_subtopics }}

{{ unset_topic }}
{{ unset_section }}
</div><!-- /.meat-item-inner -->
</div><!-- /.meat-item -->
           
{{ include file="front-central-banner.tpl" }}        
</div><!-- /#meat-left -->
{{ include file="issue-meat-right.tpl" }}    
</div><!-- /#meat -->
{{ include file="meat-down.tpl" }}
{{ include file="footer.tpl" }}
</div><!-- /#wrap -->
</body>
</html>