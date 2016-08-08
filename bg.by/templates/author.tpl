<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>"Брестская газета"</title>
{{ include file="_html_head.tpl" }}
</head>
<body>
<div id="wrapper">
  {{ include file="_header.tpl" }}
  <div id="main-content" class="clearfix">
    <div class="section-left-content">
      <div class="ticker">Автор: <strong>{{ $gimme->article->author->name }}</strong></div>
      {{ include file="author-left.tpl" }}
      </div>
      {{ include file="_sidebar.tpl" }}
  </div>
  {{ include file="_footer.tpl" }}
</div>
</body>
</html>
