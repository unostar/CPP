{{ local }}
{{ set_default_section }}
{{ list_issues length="40" columns="4" order="bynumber desc" }}
<div class="ajax-list">
<a href="{{ uri }}">{{ $gimme->issue->date|camp_date_format:"%Y" }}, {{ $gimme->issue->number }}, {{ $gimme->issue->date|camp_date_format:"%d.%m.%Y" }}</a>
{{ list_articles }}
<p>• <a href="{{ uri }}">{{ $gimme->article->name }}</a></p>
{{ /list_articles }}
</div>
{{ if $gimme->current_list->at_end }}
<div class="navigation" style="text-align: center;width:200px;margin:10px 0 0 400px;float:left;clear:left;">
  {{ if $gimme->current_list->has_previous_elements }}
  <a href="javascript:ajaxpage('{{ uri options="archive-rest-sections-cont-ajax.tpl" }}', 'contentarea');">Назад</a>
  {{ else }}
  <span>Назад</span>
  {{ /if }}
  |
  {{ if $gimme->current_list->has_next_elements }}
  <a href="javascript:ajaxpage('{{ uri options="next_items" options="archive-rest-sections-cont-ajax.tpl" }}', 'contentarea');">Вперед</a>
  {{ else }}
  <span>Вперед</span>
  {{ /if }}
</div>
{{ /if }}
{{ /list_issues }}
{{ /local }}