<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>{{ $gimme->article->name }} - {{ $gimme->section->name }} - {{ $gimme->publication->name }}</title>
{{ include file="_html_head.tpl" }}
</head>
<body>
<div id="wrapper" class="clearfix">
{{ include file="_header.tpl" }}
  <div id="main" class="clearfix">
    {{ set_issue number="1" }}
    {{ set_default_section }}
    {{ list_articles length="1" ignore_issue=TRUE order="bypublishdate desc" }}
    {{ include file="section-static-1.tpl" }}
    {{ /list_articles }}
    {{ include file="column-2.tpl" }}
  </div>
{{ include file="_footer.tpl" }}
</div>
</body>
</html>