{{ include file="slonim/_html-head.tpl" }}
<body>
<div id="wrapper">
{{* start header content *}}
  {{ include file="slonim/_header.tpl" }}
{{* end header content *}}
{{* start main content *}}
  <div id="main" class="clearfix">
    <div class="column-1">

{{ list_articles length="1" ignore_issue=TRUE order="bypublishdate desc"}}
{{ include file="slonim/static-left.tpl" }}
{{ /list_articles }}

    </div>
    <div class="column-2">
{{ include file="slonim/right-1.tpl" }}
{{ include file="slonim/right-2.tpl" }}
    </div>
  </div>
{{* end main content *}}
{{* start footer content *}}
  {{ include file="slonim/_footer.tpl" }}
{{* end footer content *}}
</div>
{{* end main content *}}
</body>
</html>