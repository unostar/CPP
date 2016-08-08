{{ dynamic }}
<div id="section-name" style="border-bottom: none"><p>Вынікі пошуку</p></div>

  <div class="meat-item">
    <div class="meat-item-inner">

{{ list_search_results length="20" order="bypublishdate desc" }}

    <h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
    <div class="intro-tools">{{ $gimme->article->publish_date|camp_date_format:"%e. %M %Y г." }} I   <a href="{{ uri options="article" }}">Камэнтары ({{ $gimme->article->comment_count }})</a></div>                

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

</div><!-- /.meat-item-inner -->
</div><!-- /.meat-item -->
{{ /dynamic }}

<div class="meat-item">
  <div class="meat-item-inner">
    {{ include file="search-advanced.tpl" }}

  </div>
</div>
