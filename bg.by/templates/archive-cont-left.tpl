<div class="main-news">
{{ list_issues length="15" order="bydate desc" }}
    {{ if $gimme->issue->is_current }}
    {{ else }}
      <h1><a href="{{ uri options="template archive-list.tpl" }}">{{ $gimme->issue->name }}</a></h1> 
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