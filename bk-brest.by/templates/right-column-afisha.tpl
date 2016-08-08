{{list_articles constraints="type is static issue is 1 section is 420" order="bysectionorder asc"}}
{{if $gimme->current_list->at_beginning}}
<div class="b-navi b-www">
	<div class="b-bheader_black"><span>{{$gimme->section->name}}</span></div>
	<div class="b-www_body">
{{/if}}
    <div class="b-www_item">
      <span class="b-www_header"><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></span>
      <p>{{$gimme->article->description}}</p>
    </div>
{{if $gimme->current_list->at_end}}
  </div>
</div>
{{/if}}
{{/list_articles}}
