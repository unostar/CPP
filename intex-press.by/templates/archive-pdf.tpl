{{ include file="_html-head.tpl" }}
<body>
<div id="wrapper">
<!-- begin header wrapper-->
{{ include file="_header.tpl" }}
<!-- end header wrapper -->
<div id="content-wrapper" class="clearfix">
  <div class="section-content">
    <div class="section clearfix">
        <div class="section-left">
          <div class="archive-content">
          <div class="section-title">Архив PDF</div>
          <div id="contentarea">{{ include file="archive-pdf-cont-ajax.tpl" }}</div>
          </div>
        </div>
        <div class="section-right">{{ include file="section-right.tpl" }}</div>
      <div class="section-fulldivider"><hr /></div>
    </div>
  <div class="banner-section">{{ include file="banner-middle728x90.tpl" }}</div>
</div>
</div>
<!-- begin footer content -->
{{ include file="_footer.tpl" }}
<!-- end footer content -->
</div>
</body>
</html>
