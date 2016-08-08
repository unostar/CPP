{{list_articles length="`$articles2show+13`" ignore_issue="true" constraints="type is article"}}{{if $gimme->current_list->index > ($articles2show+1) }}
{{if $gimme->current_list->index == ($articles2show+2)}}
  <div class="b-main header-huge">Еще материалы из рубрики “{{$gimme->section->name}}”</div>
  
  <div class="b-main">
    <ul class="g-none list-simplelinks">
{{/if}}
      <li><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></li>
{{if $gimme->current_list->at_end}}
    </ul>
  </div>
{{/if}}
{{/if}}{{/list_articles}}
