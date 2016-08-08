{{list_article_images columns="4"}}
{{if $gimme->current_list->count > 1}}
  {{if $gimme->current_list->at_beginning}}
    <div class="b-main header-huge">Остальные фото</div>
    <div class="b-main minigal ui-helper-clearfix">
  {{/if}}
  {{if $gimme->image->article_index != 1}}
    <a href="{{uri options="image"}}" rel="minigal" class="minigal_thumb" title="{{$gimme->image->description|escape}}">
      <img src="{{uri options="image"}}&amp;ImageRatio=20" alt="{{$gimme->image->description|escape}}" width="100" height="75" />
    </a>
  {{/if}}
  {{if $gimme->current_list->at_end}}
    </div>
  {{/if}}
{{/if}}
{{/list_article_images}}