<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="copyright" content="Твой стыль радыё" />
<meta name="keywords" content="радыё,праграмы,новости,комментарии,каментары,вести,рубрыкi,падкаст,статья,артыкул,Гродно,навiны,Гародня" />
<meta name="description" content="Твой стыль - радыё навiны" />
<meta name="robots" content="all" />
{{ include file="radio/_html_head.tpl" }}
<title>Твой стыль - радыё навiны</title>

</head>
<body>
{{ include file="radio/_header.tpl" }}
  
    <div id="wrapper">
	 <div class="wrapper-content" style="min-height:1250px; height:auto;">
	 <div class="top-line"></div>
	 <div class="article-left">
	   <div class="article-left-content">

	   <h1>Архіў</h1>
	   <div class="archive">

   {{ list_issues length="12" order="bydate desc" }}
   {{ if $gimme->issue->is_current }}
    {{ else }}
     <p><a href="{{ uri options="template radio/archive_list.tpl" }}">{{ $gimme->issue->name }}</a> ад {{ $gimme->issue->publish_date|camp_date_format:"%d %M %Y" }}</p> 
    {{ /if }}

    {{ if $gimme->current_list->at_end }} 
<p class="navigation">
       {{ if $gimme->current_list->has_previous_elements }}
         <a href="{{ uri options="previous_items" }}">&lt;&lt; Раней</a></p>
       {{ else }}
Раней
       {{ /if }}
|
    {{ if $gimme->current_list->has_next_elements }}
    <a href="{{ uri options="next_items" }}" >Пазней &gt;&gt;</a>
    {{ else }}                                     
Пазней
    {{ /if }}
</p>
    {{ /if }}
{{ /list_issues }}


	   </div>
<div style="float:left;width:240px;">
	   <h3 class="calendar" style="margin:0;padding:0;">Шукаць з дапамогай календара</h3>
	   {{ include file="radio/archive_calendar.tpl" }}
</div>
	   </div>

	   
 <!-- begin previous articles -->
{{ assign var="previous" value=$gimme->issue->number-1}}
{{ if $previous != "0"}}
{{ local }}
{{ set_issue number=$gimme->issue->number-1 }}
{{ list_articles }}
{{ if $gimme->current_list->at_beginning }}
<p class="title-others" style="padding:64px 0 12px 20px;">Усе артыкулы з апошняга выпуска</p>
{{ /if }}
	   <p class="others">({{ $gimme->issue->publish_date|camp_date_format:"%d.%m.%Y" }}) <a href="{{ uri options="article"}}">{{ $gimme->Article->name }}</a><br/></p>
{{ /list_articles }}
{{ /local }}
{{ /if }}
        <!-- end previous articles -->
   
	 </div>
{{ include file="radio/section-cont-right.tpl" }}
{{* include file="radio/archive_right.tpl" *}}
	 
	 </div>
	 </div>
    
{{ include file="radio/_footer.tpl" }}

	
	
</body>
</html>
