<div class="article">
{{ list_sections constraints="number greater 9 number smaller 81"}}
  {{ list_articles }}
  	{{ if $gimme->current_list->count > 0 }}
     {{ if $gimme->current_list->at_beginning }}
         <p class="issue-section-name">{{ $gimme->section->name }}</p>
     {{ /if }}
      <p class="issue-link"><a href="{{ uri options="article"}}">{{ $gimme->article->name }}</a></p>
     {{ /if }}
  {{ /list_articles }}
{{ /list_sections }}

{{* для видео раздела *}}
{{ list_sections constraints="number is 200"}}
  {{ list_articles }}
  	{{ if $gimme->current_list->count > 0 }}
     {{ if $gimme->current_list->at_beginning }}
         <p class="issue-section-name">{{ $gimme->section->name }}</p>
     {{ /if }}
      <p class="issue-link"><a href="{{ uri options="article"}}">{{ $gimme->article->name }}</a></p>
     {{ /if }}
  {{ /list_articles }}
{{ /list_sections }}

      </div>