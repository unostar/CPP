{{ include file="slonim/_html-head.tpl" }}
<body>
<div id="wrapper">
{{* start header content *}}
  {{ include file="slonim/_header.tpl" }}
{{* end header content *}}
{{* start main content *}}
  <div id="main" class="clearfix">
    <div class="column-1">
{{ include file="slonim/archive-poll-left.tpl" }}
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