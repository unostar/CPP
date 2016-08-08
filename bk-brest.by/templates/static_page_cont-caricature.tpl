<div class="l-col2_column l-col2_cr440">
  <div class="b-bheader_blue"><span><b>{{$gimme->section->name}}</b></span></div>
  {{list_articles length="1" constraints="issue is 1 section is 430"}}
  {{if $gimme->article->has_image(1)}}
  <div id="caricature" class="b-vnimaniya b-article">
  <h2>{{$gimme->article->name}}</h2>
  <div class="b-vnimaniya_credits">{{if $gimme->article->author->name}}Автор: {{$gimme->article->author->name}}{{/if}}</div>
  <img src="{{uri options="image 1"}}" width="440" alt="{{$gimme->article->name}}{{if $gimme->article->author->name}} Автор - {{$gimme->article->author->name}}{{/if}}">
  {{if $gimme->current_list->at_end}}
      {{if $gimme->current_list->has_previous_elements || $gimme->current_list->has_next_elements}}
      <div class="b-nazvper" style="text-align:center">
        {{if $gimme->current_list->has_previous_elements}}<a href="{{uripath options="section"}}?{{urlparameters options="previous_items"}}" class="b-nazvper_previous">Назад</a>{{else}}<span>Назад</span>{{/if}}&nbsp;|&nbsp;
        {{if $gimme->current_list->has_next_elements}}<a href="{{uripath options="section"}}?{{urlparameters options="next_items"}}" class="b-nazvper_next">Вперёд</a>{{else}}<span>Вперёд</span>{{/if}}
      </div>
      {{/if}}
  {{/if}}
  </div>
  {{/if}}
  {{/list_articles}}
</div>