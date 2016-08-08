{{list_sections columns="3" constraints="number greater 1 number smaller 100"}}
{{if $gimme->current_list->at_beginning}}<div class="sections">{{/if}}
{{if $gimme->current_list->column == 3 && $gimme->current_list->row == 1}}{{include file="tpl/front-sections-opinions.tpl"}}{{/if}}
{{if $gimme->current_list->column == 2 && $gimme->current_list->row == 2}}{{include file="tpl/front-sections-special-projects.tpl"}}{{/if}}
{{include file="tpl/front-sections-news.tpl"}}
{{if $gimme->current_list->at_end}}</div><!-- .sections -->{{/if}}
{{/list_sections}}
