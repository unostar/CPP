{{assign var="current" value=$gimme->article->number}}
{{list_articles length="6" constraints="number not $current section is `$gimme->article->section->number`" order="bypublishdate desc" ignore_issue="true"}}
{{if $gimme->current_list->at_beginning}}
<div id="newsbox-article-moreitems">
<div class="b-bheader_gray"><span><b>ЕЩЕ из рубрики {{$gimme->section->name}}</b></span><div class="b-bheader_pright"><a href="#add">+</a><a href="#remove">-</a></div></div>
<div class="b-nfeed m-navi_bgbottom">
	<div class="b-nfeed_bottom">
		<ul class="g-none list-linkslightgray">
{{/if}}
			<li style="display:none;"><a href="{{uri options="article"}}">{{$gimme->article->name}}</a>{{if $gimme->article->comments_enabled}}<span class="b-freshnews_no"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}</span>{{/if}}</li>
{{if $gimme->current_list->at_end}}
		</ul>
	</div>
</div>
</div>
{{/if}}
{{/list_articles}}
