<div id="top-story">
<div id="search-results">
{{ list_search_results length="20" order="bypublishdate desc" }}
   <p class="resultofsearch"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a><br />
   {{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y." }} в рубрики <a class="insection" href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></p> 

   {{ if $gimme->current_list->at_end }}
                    <div class="backandforw">
                      <p>{{ if $gimme->current_list->has_previous_elements }}<a href="{{ uri options="prev_items" }}">Назад</a>{{ else }}Назад{{ /if }}
                      <span class="middot">+</span>
                      {{ if $gimme->current_list->has_next_elements }}<a href="{{ uri options="next_items" }}">Вперед</a>{{ else }}Вперед{{ /if }}</p>
                    </div><!-- /.backandforw -->

   {{ /if }}

   {{ /list_search_results }}
   {{ if $gimme->prev_list_empty }}
      <p>Нічога не знойдзена</p>
   {{ /if }}
   </div><!-- /#search-results -->
</div><!-- /#top-story -->