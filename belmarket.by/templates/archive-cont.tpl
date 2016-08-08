<div class="home-column-middle">
  <div class="content-middle">
  
  <h3 class="top-title-article">Архив газеты &quot;Белорусы и Рынок&quot;</h3><br/>
  <div class="archive">
  <p class="old-site"><a href="http://br.minsk.by" target="_blank">Архив газеты &quot;Белорусы и рынок&quot;, с 1997 года по 2008 год</a></p>
  {{ list_issues length="16" order="bypublishdate desc" }}
  {{ if $gimme->issue->is_current }}
  {{ else }}
  {{ set_section number="5" }}
  {{ list_articles length="1" }}  
   
     <p><a href="{{ uri options="template archive-list.tpl" }}">№ {{ $gimme->article->name }}, {{ $gimme->article->Lead }}</a></p>
    {{ list_article_attachments }}
      {{ if $gimme->article->has_attachments }}
      <p><a href="{{ uri options="articleattachment" }}">(скачать)</a></p>
    {{ /if }}
    {{ /list_article_attachments }}
  
   {{ /list_articles }}
   {{ /if }}
 
{{ if $gimme->current_list->at_end }} 
<div class="archive-navi">
       {{ if $gimme->current_list->has_previous_elements }}
         <a href="{{ uri options="previous_items" }}">Вернуться</a>
       {{ else }}
          Вернуться
       {{ /if }}
<span style="font-size:10px;">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
    {{ if $gimme->current_list->has_next_elements }}
    <a href="{{ uri options="next_items" }}" class="navigation">Далее</a>
    {{ else }}                                     
       Далее
    {{ /if }}
</div>
 {{ /if }}   
{{ /list_issues }}
</div>
</div>
</div>

{{ set_default_section }}
