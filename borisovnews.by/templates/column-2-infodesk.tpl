{{ set_issue number="1" }}

{{ list_sections constraints="number is 440" ignore_issue="true" }}
<div class="block-title">{{$gimme->section->name}}</div>

<ul class="infodesk">
{{ list_articles }}
	<li><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></li>
{{ /list_articles }}
</ul><!-- .infodesk -->

{{ /list_sections }}
{{set_default_issue}}
{{set_default_section}}
{{set_default_article}}