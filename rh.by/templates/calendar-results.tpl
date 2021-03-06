﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

<title>"Рэгіянальная газета". Навіны рэгіёна: Маладзечна, Вілейка, Смаргонь, Ашмяны, Валожын, Мядзел, Астравец</title>

</head>

<body  id="article">

<div id="wrap">

{{ include file="header.tpl" }}

{{ include file="main-nav.tpl" }}


<div id="leftbar">
  <div class="story">
    
{{* collecting post from calendar and storing it into variable for later usage 
 checking if there is actually any articles on given date and if so, then rendering of page will begin. however if not, check will return null and will print out that archive is empty... *}}

{{ assign var="post" value=$smarty.get.date }}
<h1>Архiў cайта - {{ $post|camp_date_format:"%d %M %Y" }}</h1>
{{ list_sections }}
	{{ list_articles order="bypublishdate desc" ignore_issue="true" constraints="publish_date is $post"}}

				{{ if $gimme->current_list->at_beginning }}
{{ assign var="check" value="1" }}
                                   <div class="archive-div">
					<div class="type-o-cont">{{ $gimme->section->name }}</div> 
				{{ /if }}

<p><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p> 

                               {{ if $gimme->current_list->at_end }}
                               </div>
                               {{ /if }}
	{{ /list_articles }}
{{ /list_sections }}
{{ if $check != "1" }}
<p><strong>У архіве няма матэрыялаў па абранай Вамі даце. Калі ласка, абярыце іншую дату!</strong></p>
{{ /if }}

</div><!-- /.story -->                              
        

</div><!-- /#leftbar -->

{{ include file="front-rightbar.tpl" }}

</div><!-- /#wrap -->

{{ include file="footer.tpl" }}

</body>
</html>