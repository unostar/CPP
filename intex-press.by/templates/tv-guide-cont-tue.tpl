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
     <div class="article-content">
<div class="article clearfix">
<div class="article-left">
<div class="section-title">
{{ $gimme->section->name }}
</div>
{{ local }}
{{ unset_issue }}
{{ set_section number="270" }}
{{ list_articles }}
{{ if $gimme->current_list->index == 2 }}

<h1>{{ $gimme->article->name }}</h1>
<div class="tv">{{ $gimme->article->full_text }}</div>
<br/><br/>
{{ /if }}
{{ /list_articles }}
{{ /local }}
</div> 
<!-- begin article right column-->
{{ include file="article-cont-right.tpl" }}
<!-- end article right column-->
<div class="section-fulldivider"><hr /></div>
</div>
<div class="banner-section">{{ include file="banner-middle728x90.tpl" }}</div>
</div>

     <!-- end middle content -->
   </div>
     <!-- begin footer content -->
     {{ include file="_footer.tpl" }}
     <!-- end footer content -->
</div>
</body>
</html>