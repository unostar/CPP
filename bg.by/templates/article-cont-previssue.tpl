{{ list_articles length="5" constraints="number not `$gimme->default_article->number`" order="bypublishdate desc" ignore_issue="true" }}
{{ if $gimme->current_list->at_beginning && $gimme->current_list->count >1 }}
  <div class="title">{{ if $gimme->section->number == "470" }}Другие карикатуры{{else}}Другие статьи рубрики &quot;{{$gimme->section->name}}&quot;{{ /if }}</div>
{{ /if }}
    <p class="prev-section"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
{{ /list_articles }}