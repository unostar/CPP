<div class="specialists-advices">
  <h2>{{if $gimme->language->code=="ru"}}Советы специалистов{{else}}Advices{{/if}}</h2>
  {{include file="tpl/aside-special-advices-law.tpl"}}
  {{include file="tpl/aside-special-advices-household.tpl"}}
  {{include file="tpl/aside-special-advices-psychologist.tpl"}}
  {{include file="tpl/aside-special-advices-auto.tpl"}}

{{list_sections constraints="number greater 240 number smaller 300"}}
{{if $gimme->current_list->at_beginning}}<p class="rest-sections">{{/if}}
  <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a>{{if !$gimme->current_list->at_end}} | {{/if}}
{{if $gimme->current_list->at_end}}</p><!-- .rest-sections -->{{/if}}
{{/list_sections}}

</div><!-- .specialists-advices -->
