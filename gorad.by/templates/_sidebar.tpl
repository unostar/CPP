{{ if $gimme->template->name == "front.tpl" }}
	<div class="b-n-banner top">{{ include file="_banner-right-column-250x130.tpl" }}</div>
	{{ include file="right-column-block-poll.tpl" }}
	{{ include file="right-column-block-most-read.tpl" }}
	{{ include file="right-column-block-consultant.tpl" }}
	{{ include file="right-column-block-it.tpl" }}
	{{* <div class="b-n-banner">{{ include file="_banner-right-column-250x250.tpl" }}</div> *}}
	<div class="b-n-banner">{{ include file="_banner-right-column-yadirect.tpl" }}</div>
	{{ include file="right-column-block-interest.tpl" }}
	{{ include file="right-column-block-MZ.tpl" }}
	{{ include file="right-column-block-press-release.tpl" }}
	{{ include file="right-column-block-calendar.tpl" }}
	{{ include file="right-column-block-links.tpl" }}
{{ /if }}

{{ if $gimme->template->name == "section.tpl" }}
	<div class="b-n-banner top">{{ include file="_banner-right-column-yadirect.tpl" }}</div>
	{{ include file="right-column-block-consultant.tpl" }} 
	{{ include file="right-column-block-MZ.tpl" }}
	{{ include file="right-column-block-interest.tpl" }}
	{{ include file="right-column-block-calendar.tpl" }}
{{ /if }}

{{ if $gimme->template->name == "article.tpl" }}
	<div class="b-n-banner top">{{ include file="_banner-right-column-250x400.tpl" }}</div>
	<div class="b-n-banner">{{ include file="_banner-right-column-yadirect.tpl" }}</div>
	{{ include file="right-column-widgets.tpl" }}
	{{ include file="right-column-block-last-articles-section.tpl" }}
	{{ include file="right-column-block-last-articles-site.tpl" }}
{{ /if }}

{{ if $gimme->template->name == "static.tpl" }}
	<div class="b-n-banner top">{{ include file="_banner-right-column-yadirect.tpl" }}</div>
	<div class="b-n-banner">{{ include file="_banner-right-column-250x400.tpl" }}</div>
	{{ include file="right-column-block-consultant.tpl" }}
	{{ include file="right-column-block-most-read.tpl" }}
	{{ include file="right-column-block-MZ.tpl" }}
	{{ include file="right-column-block-interest.tpl" }}
	{{ include file="right-column-block-calendar.tpl" }}
	{{ include file="right-column-widgets.tpl" }}
{{ /if }}

{{ if $gimme->template->name == "archive.tpl" }}
	{{ include file="right-column-archive-search.tpl" }}
	{{ include file="right-column-block-calendar.tpl" }}
{{ /if }}
