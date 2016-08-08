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
  <div class="wrapper-content">
    <div class="top-line"></div>

<div class="section-left">


{{* collecting post from calendar and storing it into variable for later usage 
 checking if there is actually any articles on given date and if so, then rendering of page will begin. however if not, check will return null and will print out that archive is empty... *}}

{{ assign var="post" value=$smarty.get.date }}
<h1>Архiў cайта - {{ $post|camp_date_format:"%d %M %Y" }}</h1>
<div class="section-left-list">
{{ list_sections }}
	{{ list_articles order="bypublishdate desc" ignore_issue="true" constraints="publish_date is $post"}}

				{{ if $gimme->current_list->at_beginning }}
{{ assign var="check" value="1" }}
                                   <div class="archive-div">
					<p class="archive-title">{{ $gimme->section->name }}</p> 
				{{ /if }}

<p><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p> 

                               {{ if $gimme->current_list->at_end }}
                               </div>
                               {{ /if }}
	{{ /list_articles }}
{{ /list_sections }}
{{ if $check != "1" }}
<p>У архіве няма матэрыялаў па абранай Вамі даце. Калі ласка, абярыце іншую дату!</p>
{{ /if }}

</div>
</div>

    {{ include file="radio/section-cont-right.tpl" }}
    {{ include file="radio/program-slider.tpl" }}
  </div>
</div>
{{ include file="radio/_footer.tpl" }}
</body>
</html>
