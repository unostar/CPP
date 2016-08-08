<div class="b-navi">
  {{set_section number="140"}}<div class="b-bheader_gray"><span><a href="{{uri options="section"}}"><b>литера</b></a></span></div>{{set_default_section}}
{{list_articles length="3" constraints="section is 140" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
  <div class="b-nfeed m-navi_bgbottom">
    <span class="b-nfeed_strongh">Сегодня в нашем Литературном клубе:</span>
    <div class="b-nfeed_mainheader">{{$gimme->article->author->name}}</div>
    <img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" width="100" height="100" />
    <span class="b-nfeed_header m-nfeed_headersmaller"><a href="{{uri options="article"}}">{{$gimme->article->name}}...</a></span>
    <p>{{if $gimme->article->type_name=="poetry"}}Поэзия{{elseif $gimme->article->type_name=="prose"}}Проза{{/if}}</p>
    <div class="b-nfeed_bottom">
      <ul class="g-none list-linkslightgray">
{{else}}
        <li><a href="{{uri options="article"}}">"{{$gimme->article->name}}..."</a></li>
{{/if}}
{{if $gimme->current_list->at_end}}
      </ul>
    </div>
  </div>
{{/if}}
{{/list_articles}}
</div>
