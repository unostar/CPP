{{ list_issues length="40" columns="2" order="bynumber desc" }}
<div style="width:180px;margin:10px 0px 0 20px;float:left;" class="ajax-list">
<a href="{{ uri options="template issue-contents.tpl" }}">№ {{ $gimme->issue->number }} от {{ $gimme->issue->date|camp_date_format:"%d %M" }}</a>
</div>
{{ if $gimme->current_list->at_end }}
<div class="navigation" style="text-align: center;width:200px;margin:10px 0 0 200px;float:left;clear:left;">
  {{ if $gimme->current_list->has_previous_elements }}
  <a href="javascript:ajaxpage('{{ uri options="template archive-cont-ajax.tpl previous_items" }}', 'contentarea');">Назад</a>
  {{ else }}
  <span>Назад</span>
  {{ /if }}
  |
  {{ if $gimme->current_list->has_next_elements }}
  <a href="javascript:ajaxpage('{{ uri options="template archive-cont-ajax.tpl next_items" }}', 'contentarea');">Вперед</a>
  {{ else }}
  <span>Вперед</span>
  {{ /if }}
</div>
{{ /if }}
{{ /list_issues }}