{{ list_sections constraints="number greater 101 number smaller 150" ignore_issue="true"}}
  {{ if $gimme->current_list->at_beginning }}
<p class="title-2 margin-top-20">Обзор статей</p>
  {{ /if }}
{{ list_articles length="12" order="bypublishdate desc"}}
        <p class="issue-link"><a href="{{ uri options="article"}}">{{ $gimme->article->name }}</a></p>
{{ /list_articles }}
{{ /list_sections }}