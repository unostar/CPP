{{ if $smarty.get.type == "rss" }}
{{ include file="rss.tpl" }}
{{ else }}

	{{ include file="_html-head.tpl" }}

	{{ include file="header.tpl" }}

	<h2>{{ $gimme->section->name }}</h2>

	<div class="main">
		{{ include file="tpl/section-content.tpl" }}
	</div><!-- .main -->

	{{ include file="aside.tpl" }}

	{{ include file="footer.tpl" }}

{{ /if }}
