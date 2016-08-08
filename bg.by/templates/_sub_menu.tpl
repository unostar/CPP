<ul class="sub-menu"> 
	{{ set_current_issue }}
	{{ set_current_section }}

	{{ list_sections constraints="number greater 99 number smaller 141" }}
	<li{{ if $gimme->default_section->url_name == $gimme->section->url_name && $gimme->template->name != "rss.tpl" }} class="current"{{/if}}><a href="{{ uri options="section"}}">{{ $gimme->section->name }}</a></li>
	{{ /list_sections }}

	{{ list_sections constraints="number greater 159 number smaller 251" }}
		{{ list_articles length="1" }}
		<li{{ if $gimme->default_section->url_name == $gimme->section->url_name && $gimme->template->name != "rss.tpl" }} class="current"{{/if}}><a href="{{ uri options="section"}}">{{ $gimme->section->name }}</a></li>
		{{ /list_articles }}
	{{ /list_sections }}

	<li><noindex><nofollow><a href="http://bulkovo.livejournal.com/" target="_blank">Блог</a></nofollow></noindex></li>
	<li{{ if $gimme->template->name == "rss.tpl" }} class="current"{{/if}}><a href="//{{$gimme->publication->site}}/?tpl=rss.tpl" class="rss">RSS</a></li> 

	{{ set_default_issue }}
	{{ set_default_section }}
	{{ set_default_article }}
	{{ set_default_topic }}

</ul>