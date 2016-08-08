{{assign var="items2show" value="8"}}
{{list_articles length=`$items2show+10` constraints="issue greater 1" order="bypublishdate desc"}}
{{if $gimme->current_list->index < ($items2show+1) }}
<div class="b-nfeed bg-dotted st-pb20">
	<div class="b-nfeed_mainheader">
  <img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" width="100" height="100" />
  <a href="{{uri options="article"}}">{{$gimme->article->author->name}}:<br />"{{$gimme->article->name}}..."</a></div>
	<p>{{if $gimme->article->type_name=="poetry"}}Поэзия{{elseif $gimme->article->type_name=="prose"}}Проза{{/if}}</p>
</div>
{{/if}}
{{if $gimme->current_list->index == ($items2show+1) }}
<div id="newsbox-{{$gimme->section->url_name}}-rest">
<div class="b-bheader_gray"><span><b>ЕЩЕ из рубрики {{$gimme->section->name}}</b></span><div class="b-bheader_pright"><a href="#add">+</a><a href="#remove">-</a></div></div>
<div class="b-nfeed m-navi_bgbottom">
	<div class="b-nfeed_bottom">
		<ul class="g-none list-linkslightgray">
{{/if}}
{{if $gimme->current_list->index > $items2show }}
			<li style="display:none;"><a href="{{uri options="article"}}">"{{$gimme->article->name}}..."</a></li>
{{/if}}
{{if $gimme->current_list->index > $items2show && $gimme->current_list->at_end}}
		</ul>
	</div>
</div>
</div>
{{/if}}
{{/list_articles}}
