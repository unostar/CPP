<div class="type-o-cont">Вынікі пошуку</div>        
        
<div class="divcont-tight">
   {{ list_search_results length="20" order="bypublishdate desc" }}

   <p class="separated"><span class="dateright">{{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y." }}</span><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>

   {{ if $gimme->current_list->at_end }}

      <div id="prevnext">

      {{ if $gimme->current_list->has_previous_elements }}
         <span><a href="{{ uri options="prev_items" }}">Папярэдняя</a></span>
      {{ else }}
         <span>Папярэдняя</span>
      {{ /if }}
      <span>|</span>
      {{ if $gimme->current_list->has_next_elements }}
         <span><a href="{{ uri options="next_items" }}">Наступная</a></span>
      {{ else }}
         <span>Наступная</span>
      {{ /if }}

      </div><!-- /#prevnext -->

   {{ /if }}

   {{ /list_search_results }}
   {{ if $gimme->prev_list_empty }}
      <p>Нічога не знойдзена</p>
   {{ /if }}
</div>