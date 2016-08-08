<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Наша жизнь - Борисовские Новости архив статей </title>
{{ include file="_html_head.tpl" }}
</head>
<body>
<div id="wrapper" class="clearfix">
{{ include file="_header.tpl" }}
  <div id="main" class="clearfix">
    <!-- -->
    <div class="h1">№{{ $gimme->issue->number }} ад {{ $gimme->issue->publish_date|camp_date_format:"%d.%M %Y" }}</div>
    {{ list_sections order="bypublishdate desc" constraints="number greater 4 number smaller 299" }}
{{ assign var="t_section" value="0" }}
{{ list_articles order="bypublishdate desc" }}
{{ if $gimme->current_list->at_beginning }}
{{ assign var="t_section" value="1" }}
{{ /if }}
{{ /list_articles }}

{{ if $t_section == "1" }}
<div class="title">{{ $gimme->section->name }}</div>
<div class="rest-news">
{{ list_articles order="bypublishdate desc" }}
<h3 class="section-block"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
{{ /list_articles }}
</div>
{{ /if}}
{{ /list_sections }}
    <!-- -->
  </div>
{{ include file="_footer.tpl" }}
</div>
</body>
</html>
