{{ set_issue number="1" }}
<nav class="nav">
	<ul>
		{{ list_sections constraints="number greater 45 number smaller 155" }}
			<li{{ if $gimme->section->number == $gimme->default_section->number }} class="current"{{ /if }}><a href="{{ url options="section" }}">{{ $gimme->section->name }}</a></li>
		{{ /list_sections }}
	</ul>
</nav><!-- .nav -->
{{ set_default_section }}{{ set_default_article }}{{ unset_topic }}
