{{ include file="_html-head.tpl" }}

{{ include file="header.tpl" }}

<h2>{{ $gimme->section->name }}</h2>

<div class="main">
	{{ include file="tpl/archive-search-pane.tpl" }}

	{{ if $gimme->search_articles_action->defined }}
		{{ include file="tpl/archive-search-results.tpl" }}
	{{ else }}
		{{ include file="tpl/archive-content.tpl" }}
	{{ /if }}
</div><!-- .main -->

{{ include file="aside.tpl" }}

{{ include file="footer.tpl" }}
