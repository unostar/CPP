    <div id="column-1" class="clearfix">
<div class="h1"></div>
{{ list_search_results length="20" order="bypublishdate desc" }}

    <h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
    <div>{{ $gimme->article->publish_date|camp_date_format:"%e. %M %Y г." }}</div>                

   {{ if $gimme->current_list->at_end }}

      <div id="prevnext">

      {{ if $gimme->current_list->has_previous_elements }}
         <span><a href="{{ uri options="prev_items" }}">Предыдущая</a></span>
      {{ else }}
         <span>Предыдущая</span>
      {{ /if }}
      <span>|</span>
      {{ if $gimme->current_list->has_next_elements }}
         <span><a href="{{ uri options="next_items" }}">Следующая</a></span>
      {{ else }}
         <span>Следующая</span>
      {{ /if }}

      </div><!-- /#prevnext -->

   {{ /if }}

   {{ /list_search_results }}
   {{ if $gimme->prev_list_empty }}
      <p>Не найдено статей</p>
   {{ /if }}
</div>
