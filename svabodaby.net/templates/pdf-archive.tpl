<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="{{$gimme->issue->language->code}}">
<meta name="keywords" content="{{$siteinfo.keywords}}" />
<meta name="description" content="{{$siteinfo.description}}" />
<title>{{$gimme->publication->name}} - {{$gimme->section->name}}</title>
{{include file="_html_header.tpl"}}
</head>
{{set_default_issue}}
{{set_default_section}}
<body>
<div id="wrapper" class="clearfix">
  <div id="header">{{include file="_header.tpl"}}</div>
  <div id="main" class="clearfix">
    <div class="section column-1 clearfix">
      {{include file="pdf-section-column-1.tpl"}}
    </div>
    <div class="column-2 clearfix">{{include file="column-2.tpl"}}</div>
  </div>
  <div id="footer">{{include file="_footer.tpl"}}</div>
</div>
</body>
</html>