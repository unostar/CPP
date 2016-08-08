<div class="sections">
{{list_sections columns="2" constraints="number greater_equal 30 number smaller_equal 90"}}
{{if $gimme->section->number < 80}}
  {{include file="arche/tpl/front-sections-list.tpl"}}
{{elseif $gimme->section->number == 80}}
  {{include file="arche/tpl/front-sections-jokes.tpl"}}
{{elseif $gimme->section->number == 90}}
  {{include file="arche/tpl/front-sections-monitoring.tpl"}}
{{/if}}
{{if $gimme->current_list->column == 2 && !$gimme->current_list->at_end && $gimme->section->number < 80}}
  <div class="sections-divider"></div>
{{/if}}
{{/list_sections}}
</div><!-- .sections -->
