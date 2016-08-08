<div class="article" style="width:655px;float:left;">
{{ list_issues length="20" order="bypublishdate desc" }}
    {{ if $gimme->issue->is_current }}
    {{ else }}
      <p class="issue-name"><a href="{{ uri options="template slonim/issue-contents-otdusina.tpl"}}">{{ $gimme->issue->name }}</a>, {{ $gimme->issue->publish_date|camp_date_format:"%d.%m.%Y" }}</p>
    {{ /if }}

{{ if $gimme->current_list->at_end }} 
<div class="archive-navi">
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
    {{ /if }}
{{ /list_issues }}&nbsp;
      </div>