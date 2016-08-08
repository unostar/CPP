<!-- articles - the rest -->
{{ assign var="n_article" value=$gimme->article->number }}
{{assign var="cnt" value="1"}}
{{ list_articles length="29" }}
{{ if $gimme->current_list->at_beginning && $gimme->current_list->count >1 }}
  <div class="title">{{ if $gimme->section->number == "470" }}Другие карикатуры{{else}}Другие статьи рубрики &quot;{{$gimme->section->name}}&quot;{{ /if }}</div>
{{ /if }}
{{ if $gimme->article->number == $n_article || $cnt <= 9}}
  {{assign var="cnt" value=$cnt+1}}
{{ else }}
    <p class="prev-section"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
{{ /if }}
{{ /list_articles }}
<!-- end articles - the rest -->