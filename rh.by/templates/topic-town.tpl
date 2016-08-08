<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" media="screen, projection, print" href="/templates/styles/screen.css" />

{{ include file="_html_head.tpl" }}

<script type="text/javascript" src="/templates/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="/templates/js/jquery-ui-1.7.1.custom.min.js"></script>
<script type="text/javascript">
$(function(){
// Tabs
$('#most').tabs();
//hover states on the static widgets
$('#dialog_link, ul#icons li').hover(
function() { $(this).addClass('ui-state-hover'); }, 
function() { $(this).removeClass('ui-state-hover'); }
);
});
</script>

<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="generator" content="Campsite" />

<title>{{ $gimme->topic->name }} | "Рэгіянальная газета". Навіны рэгіёна: Маладзечна, Вілейка, Смаргонь, Ашмяны, Валожын, Мядзел, Астравец</title>

</head>

<body  id="section">

<div id="wrap">

{{ include file="header.tpl" }}

{{ include file="main-nav.tpl" }}

{{ include file="topic-town-cont.tpl" }}

{{ include file="front-rightbar.tpl" }}

</div><!-- /#wrap -->

{{ include file="footer.tpl" }}

</body>
</html>