{{ if $gimme->article->comment_count > 0 }}

<section class="article-comments block" id="comments">
	<header>
		<h3>Комментарии</h3>
		<small class="all-comments-count">Комментариев: {{ $gimme->article->comment_count }}</small>
	</header>

	{{ list_article_comments order="bydate asc"}}
		<article class="comment">
			<footer>
				<span class="author">{{ $gimme->comment->nickname }}</span>
				{{ assign var="xdate" value=$gimme->comment->submit_date|date_format:"%d.%m.%Y" }}
				{{ assign var="xdate_now" value=$smarty.now|date_format:"%d.%m.%Y" }}
				<time pubDate datetime="{{ $gimme->comment->submit_date|date_format:"%Y-%m-%dT%H:%M:%S+03:00" }}">{{ if $xdate == $xdate_now }}Сегодня{{ else }}{{ $gimme->comment->submit_date|date_format:"%d.%m.%Y" }}{{ /if }} в {{ $gimme->comment->submit_date|date_format:"%H:%M" }}</time>
			</footer>

			<div class="content">
				{{ $gimme->comment->content }}
			</div><!-- .content -->
		</article><!-- .comment -->
	{{ /list_article_comments }}

</section><!-- .article-comments -->
{{ /if }}