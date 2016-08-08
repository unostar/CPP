{{ include file="_html-head.tpl" }}

{{ include file="header.tpl" }}

{{ if $smarty.get.name }}
	<h2>Страница автора</h2>

	{{ assign var="author_const" value=$smarty.get.name|replace:' ':'\ ' }}

	<div class="main">
		{{ include file="tpl/authors-about-author.tpl" }}
		{{ include file="tpl/authors-articles.tpl" }}
	</div><!-- .main -->
{{ else }}
	<h2>{{ $gimme->section->name }}</h2>

	<div class="main">
		{{ include file="tpl/authors-all.tpl" }}
	</div><!-- .main -->
{{ /if }}

{{ include file="aside.tpl" }}

{{ include file="footer.tpl" }}
