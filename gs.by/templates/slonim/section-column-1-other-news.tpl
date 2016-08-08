{{ assign var="section" value=$gimme->section->number }}
{{ list_issues length="2" order="bynumber desc" }}
  {{ if $gimme->issue->is_current }}
     {{ else }}
{{ list_sections }}
{{ if $gimme->section->number == $section }}
           {{ list_articles length="5" order="bypublishdate desc"}}
{{ if $gimme->current_list->at_beginning }}
<div class="section-divider"><p>Новости из предыдущих номеров в рубрикe {{ $gimme->section->name }}</p></div>
{{ /if }}
      <p class="section-rest"><a href="{{ uri }}">{{ $gimme->article->name }}</a></p>
           {{ /list_articles }}
{{ /if }}
{{ /list_sections }}
  {{ /if }}
{{ /list_issues }}