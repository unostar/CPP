{{assign var="n_section" value=$gimme->section->number}}
{{set_issue number=$gimme->issue->number-1}}
{{set_section number=$n_section}}
{{list_articles length="5" order="bypublishdate desc"}}
  {{if $gimme->current_list->count>1}}
    {{if $gimme->current_list->at_beginning}}
      <div class="art_from_previous">
      <h2 class="top-news">&quot;{{ $gimme->section->name }}&quot; из предыдущего выпуска</h2>
    {{/if}}
      <p class="br-article"><a href="{{uri options="article"}}">{{$gimme->article->name}}&nbsp;<span class="index-date">({{$gimme->article->author->name}}{{$gimme->article->extended_author}}, {{$gimme->issue->name}})</span></a><br/></p>
    {{if $gimme->current_list->at_end}}
      <p class="all-previous"><a href="{{uri options="section"}}">Все новости из предыдущего выпуска</a></p>
      </div><!-- /.art_from_previous -->
    {{/if}}
  {{/if}}
{{/list_articles}}
{{set_default_issue}}
{{set_default_section}}
