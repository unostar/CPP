<div class="b-sec">
	<div class="b-bheader_black"><span>САМЫЕ ПОПУЛЯРНЫЕ</span></div>
	<div class="b-freshnews">
		<ul class="g-none">
{{list_articles length="10" constraints="type is article section smaller 200 issue greater `$gimme->issue->number-2`" order="bypopularity desc"}}
			<li><div><a href="{{uri options="article"}}">{{$gimme->article->name}}</a>
			<span class="b-freshnews_no"><i class="ico ico-views"></i> {{$gimme->article->reads}}</span></div>
      </li>
{{/list_articles}}
		</ul>
	</div>
</div>
