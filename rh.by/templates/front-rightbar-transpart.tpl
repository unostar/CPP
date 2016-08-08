{{ local }}
{{ set_issue number="1" }}
{{ set_section number="4" }}
<div class="left">
	<div class="type-o-cont">{{ $gimme->section->name }}</div>
	<div class="divcont">
{{ list_articles length="2" order="bypublishdate desc" constraints="type is service" }}
		<h4><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h4>
{{ /list_articles }}
	</div>
</div>
{{ /local }}