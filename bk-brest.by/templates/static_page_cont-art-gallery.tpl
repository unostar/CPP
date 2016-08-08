<div class="l-col2_column l-col2_cr440">
  <div class="b-bheader_blue"><span><b>{{$gimme->section->name}}</b></span></div>
  {{list_articles constraints="issue is 1 section is 440"}}
  <div class="b-vnimaniya b-article"><h2>{{$gimme->article->name}}</h2>
  <div class="b-vnimaniya_credits">{{$gimme->article->description}}</div>
  <div class="art_gallery">
  {{list_article_images columns="2"}}
  <a {{if $gimme->current_list->column==1}}class="rm"{{/if}} href="{{uri options="image"}}" title="{{$gimme->image->description}}" rel="art_gallery_{{$gimme->article->number}}"><img src="{{uri options="image"}}&ImageRatio=30" width="250" alt="{{$gimme->image->description}}" /></a>
  {{/list_article_images}}
  </div>
  {{if $gimme->current_list->at_end}}
      {{if $gimme->current_list->has_previous_elements || $gimme->current_list->has_next_elements}}
      <div class="b-nazvper" style="text-align:center">
        {{if $gimme->current_list->has_previous_elements}}<a href="{{uripath options="section"}}?{{urlparameters options="previous_items"}}" class="b-nazvper_previous">Назад</a>{{else}}<span>Назад</span>{{/if}}&nbsp;|&nbsp;
        {{if $gimme->current_list->has_next_elements}}<a href="{{uripath options="section"}}?{{urlparameters options="next_items"}}" class="b-nazvper_next">Вперёд</a>{{else}}<span>Вперёд</span>{{/if}}
      </div>
      {{/if}}
  {{/if}}
  </div>
  {{/list_articles}}
</div>