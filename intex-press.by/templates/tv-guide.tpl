<?php
include_once "look/image.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>INTEX-PRESS Online - белорусские новости, события, обозрения</title>
<meta name="keywords" content="belarus,news,events,politics,Беларусь,события,обозрения, новости,политика,экономика,Минск" />
{{ include file="_html-head.tpl" }}
<script type="text/javascript" src="/templates/javascript/popup.js"></script>
</head>
<body>
<div id="wrapper">
    <!-- begin header wrapper-->
    {{ include file="_header.tpl" }}
    <!-- end header wrapper -->
   <div id="content-wrapper" class="clearfix">
     <!-- begin middle content -->
      {{ include file="tv-guide-cont.tpl" }}
     <!-- end middle content -->
   </div>
     <!-- begin footer content -->
     {{ include file="_footer.tpl" }}
     <!-- end footer content -->
</div>
</body>
</html>