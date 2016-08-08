{{list_article_images columns="4"}}
{{if $gimme->current_list->count > 2}}
  {{if $gimme->image->article_index > 49}}
  {{if $gimme->current_list->at_beginning}}
    <div class="b-maincontent"><h2 class="header-block m-header-block-blue"><b class="bg-header-block-l"></b><b class="bg-header-block-r"></b>
    <span class="header-block-i">Іншыя фота артыкула</span></h2>
    <div class="b-maincontent-il"><div class="b-maincontent-ir"><div id="minigal" class="b-maincontent-i minigal ui-helper-clearfix">
  {{/if}}
    <a href="{{uri options="image"}}" rel="minigal" class="minigal_thumb" title="{{$gimme->image->description|escape}}">
      <img src="{{uri options="image"}}&amp;ImageRatio=20" alt="{{$gimme->image->description|escape}}" width="100" height="75" />
    </a>
  {{if $gimme->current_list->at_end}}
    </div></div></div>
    <span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
    </div>
  {{/if}}
  {{/if}}
{{/if}}
{{/list_article_images}}
