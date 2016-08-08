{{local}}
{{set_publication identifier="2"}}
{{set_issue number="1"}}
<h2 class="texts"><a href="http://{{$gimme->publication->site}}">ARCHE-ТЭКСТЫ:</a></h2>

<section class="texts">
	<h2>Галоўныя навіны:</h2>
	<ul class="articles-list">
{{list_articles length="3" constraints="type is article OnFrontPage is on OnSection is on section greater 20 section smaller 80" ignore_issue="true" order="bypublishdate desc"}}
		<li>
			<h3><a href="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}&nbsp;<span class="more">&gt;&gt;</span></a></h3>
			<footer class="article-footer">
        <time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}">{{$gimme->article->publish_date|camp_date_format:"%d/%m/%Y"}}</time>
			</footer><!-- .article-footer -->
{{/list_articles}}
	</ul><!-- .articles-list -->

	<h2>Важнае:</h2>
	<ul class="articles-list">
{{list_articles length="5" constraints="type is article OnFrontPage is off OnSection is on section greater 20 section smaller 200" order="bypublishdate desc" ignore_issue="true"}}
		<li>
			<h3><a href="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}&nbsp;<span class="more">&gt;&gt;</span></a></h3>
		</li>
{{/list_articles}}
	</ul><!-- .articles-list -->
</section><!-- .texts -->
{{/local}}
