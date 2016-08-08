<div class="section-column-2 clearfix">
  <div class="column-2-content">
   <div class="main-box">

{{* collecting post from calendar and storing it into variable for later usage 
 checking if there is actually any articles on given date and if so, then rendering of page will begin. however if not, check will return null and will print out that archive is empty... *}}

{{ assign var="post" value=$smarty.get.date }}




<div class="h1">Архив cайта - {{ $post|camp_date_format:"%d %M %Y" }}</div>


{{ list_sections }}
  {{ list_articles order="bypublishdate desc" ignore_issue="true" constraints="publish_date is $post"}}

        {{ if $gimme->current_list->at_beginning }}
{{ assign var="check" value="1" }}
       <div class="rest-news">
          <div class="title">{{ $gimme->section->name }}</div> 
        {{ /if }}

<h3 class="section-block"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3> 

                            {{ if $gimme->current_list->at_end }}
       </div>
                               {{ /if }}
  {{ /list_articles }}
{{ /list_sections }}



{{ if $check != "1" }}
<p style="clear:left">В архиве нет статей по выбранной дате. Выберите другую дату для поиска (даты выпусков отмечены ).</p>
{{ /if }}

  </div>
 </div>
</div>