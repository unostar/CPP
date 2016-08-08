<article class="article static">
{{list_articles length="1" constraints="type is article" ignore_issue="true"}}
	<h1>{{$gimme->article->name}}</h1>
	<div class="intro">{{$gimme->article->intro}}</div>
	<div class="full_text">{{$gimme->article->full_text}}</div>
{{/list_articles}}
	<footer>
    <h3 class="block-title"><span>{{$gimme->section->name}}</span></h3>
	</footer>
</article><!-- .article -->
