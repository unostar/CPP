{{list_articles constraints="type is static issue is 1 section is 410" order="bysectionorder asc"}}
{{if $gimme->current_list->at_beginning}}
<div class="b-navi">
  <div class="b-bheader_black"><span>{{$gimme->section->name}}</span></div>
  <ul class="g-none list-linkslightgray">
{{/if}}
    <li><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></li>
{{if $gimme->current_list->at_end}}
  </ul>
</div>
{{/if}}
{{/list_articles}}
