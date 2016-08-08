<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
{{ include file="_html_head.tpl" }}
</head>
<body>
<div id="wrapper">
  {{ include file="_header.tpl" }}
  <div id="main-content" class="clearfix">
  <div class="home-left-content">
    <div class="ticker">Региональный еженедельник для всей семьи <a href="{{ uri options="template article-recently-commented.tpl" }}">Последние комментарии</a></div>
    {{ include file="front-4-main-news.tpl"}}
    {{ include file="front-cont-left.tpl" }}
    {{ include file="front-cont-right.tpl" }}
  </div>
  {{* include file="front-column-3.tpl" *}}
  {{ include file="_sidebar.tpl" }}
  </div>
  {{ include file="_footer.tpl" }}
</div>
</body>
</html>
