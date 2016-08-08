<div class="article" style="width:655px;float:left;">
<h1>PDF номер</h1>
{{ list_issues constraints="number greater 1" order="bypublishdate desc" }}
{{ set_section number = "1"}}
{{ list_articles length="1" constraints="type is Issue_PDF"}}
{{ if $gimme->current_list->at_beginning }}

 <p class="issue-name" style="clear:left;"><a href="{{ uri options="template slonim/issue-contents.tpl"}}">{{ $gimme->issue->name }}</a>, {{ $gimme->issue->publish_date|camp_date_format:"%d.%m.%Y" }}</p>
{{ /if }}
{{ if $gimme->article->has_attachments }}
{{ list_article_attachments }}
<p style="float:left;"><a href="{{ uri options="articleattachment" }}">{{$gimme->attachment->file_name }}</a></p>
{{ /list_article_attachments }}
{{ /if }}
{{ /list_articles }}

{{ set_section number = "100"}}
{{ list_articles length="1" constraints="type is Issue_PDF"}}
{{ if $gimme->article->has_attachments }}
{{ list_article_attachments }}
<p style="float:left;"><span>&nbsp;&nbsp;|&nbsp;&nbsp;</span> <a href="{{ uri options="articleattachment" }}">{{$gimme->attachment->file_name }}</a></p>
{{ /list_article_attachments }}
{{ /if }}
{{ /list_articles }}

{{* if $gimme->current_list->at_end }} 
<div class="archive-navi" style="clear:left;">
       {{ if $gimme->current_list->has_previous_elements }}
         <a href="{{ uri options="previous_items" }}">Назад</a>
       {{ else }}
          Назад
       {{ /if }}
|
    {{ if $gimme->current_list->has_next_elements }}
    <a href="{{ uri options="next_items" }}" class="navigation">Вперед</a>
    {{ else }}                                     
       Вперед
    {{ /if }}
</div>
    {{ /if *}}
{{ /list_issues }}&nbsp;
      </div>