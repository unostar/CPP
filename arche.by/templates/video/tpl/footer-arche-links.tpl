<nav class="nav-sub texts">
	<h3>ARCHE тэксты:</h3>
	<ul>
{{local}}
{{set_publication identifier="2"}}
{{set_issue="1"}}
{{list_sections constraints="number greater_equal 30 number smaller_equal 100"}}
    <li><a href="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/" target="_blank">{{$gimme->section->name}}</a></li>
{{/list_sections}}
{{/local}}
	</ul>
</nav><!-- .nav-sub -->
