{{ include file="_html-head.tpl" }}

{{ include file="header.tpl" }}

<h2><a href="/{{ $gimme->language->code }}/page/{{ $gimme->section->url_name }}/">{{ $gimme->section->name }}</a></h2>

<div class="main">
	<article class="article">
		{{ include file="tpl/article-content.tpl" }}

		{{ if $gimme->article->comments_enabled }}
			{{ include file="tpl/article-add-comment.tpl" }}
			{{ include file="tpl/article-comments.tpl" }}
		{{ /if }}
	</article><!-- .article -->
</div><!-- .main -->

{{ include file="aside.tpl" }}

{{ include file="footer.tpl" }}
