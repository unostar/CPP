<div class="entertainment">
  <h2>{{if $gimme->language->code=="ru"}}<span>ВК</span> развлекательный{{else}}<span>VC</span> Entertainment{{/if}}</h2>
{{include file="tpl/aside-entertainment-girl.tpl"}}
{{include file="tpl/aside-entertainment-recipes.tpl"}}
{{include file="tpl/aside-entertainment-jokes.tpl"}}

{{list_sections constraints="number greater 300 number smaller 400 number not 320 number not 330 number not 340"}}
{{if $gimme->current_list->at_beginning}}<p class="rest-sections">{{/if}}
  <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a>{{if !$gimme->current_list->at_end}} | {{/if}}
{{if $gimme->current_list->at_end}}</p><!-- .rest-sections -->{{/if}}
{{/list_sections}}

</div><!-- .entertainment -->
