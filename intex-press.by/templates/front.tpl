{{ include file="_html-head.tpl" }}
<body>
<div id="wrapper">
<!-- begin header wrapper-->
{{ include file="_header.tpl" }}
<!-- end header wrapper -->
 <!-- begin middle content -->
  <div id="content-wrapper" class="clearfix">
   <!-- begin home top 3 columns -->
   <div class="columns-wrapper clearfix">
     <!-- begin front-left content -->
     {{ include file="front-left.tpl" }}
     <!-- end front-left content -->
     <!-- begin front-middle content -->
     {{ include file="front-middle.tpl" }}
     <!-- end front-middle content -->
     <!-- begin front-right content -->
     {{ include file="front-right.tpl" }}
     <!-- end front-right content -->
   </div>
   <!-- end home top 3 columns -->
     <div class="column-divider clearfix"><hr /></div>
     {{ include file="banner-middle728x90.tpl" }}
     <div class="column-divider clearfix"><hr /></div>
     <!-- begin home bottom 3 columns -->
     {{ include file="front-bottom.tpl" }}
     <!-- end home bottom 3 columns -->  
   </div>
 <!-- end middle content -->
 <!-- begin footer content -->
 {{ include file="_footer.tpl" }}
 <!-- end footer content -->
</div>
</body>
</html>