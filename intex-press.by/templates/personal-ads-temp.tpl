{{ include file="_html-head.tpl" }}
<body>
<div id="wrapper">
<!-- begin header wrapper-->
{{ include file="_header.tpl" }}
<!-- end header wrapper -->
<!-- begin middle content -->
<div id="content-wrapper" class="clearfix">
<!-- begin section content -->
<div class="article-content">
<div class="article clearfix">
<div class="article-left">
<div class="section-title">Частные объявления</div>
<p>&nbsp;</p>
<p>{{include file="personal-ads-temp-plain.tpl"}}</p>
</div>
<div class="section-right">
{{ include file="section-right.tpl" }}
</div>
<div class="section-fulldivider"><hr /></div>
</div>
<div class="banner-section">{{ include file="banner-middle728x90.tpl"}}</div>
</div>
<!-- end section content -->
</div>
<!-- end middle content -->
<!-- begin footer content -->
{{ include file="_footer.tpl" }}
<!-- end footer content -->
</div>
</body>
</html>