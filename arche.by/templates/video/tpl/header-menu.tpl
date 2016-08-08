<nav class="nav-main">
	<ul>
		<li{{if $gimme->template->name == "video/front.tpl"}} class="active"{{/if}}><a href="/">Галоўная ARCHE-Відэа</a></li>

{{*	<li><a href="">Мабільнае відэа</a></li> *}}

		<li><a href="/">ARCHE-Відэа</a>
{{list_sections constraints="number smaller_equal 100"}}
{{if $gimme->current_list->at_beginning}}
        <ul class="nav-main-sub a-video">
{{/if}}
        <li><a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{if $gimme->current_list->at_end}}
        </ul><!-- .nav-main-sub -->
{{/if}}
{{/list_sections}}
    </li>

		<li><a href="http://arche.by/by/page/books/">Кнігарня ARCHE</a></li>

		<li>
{{set_publication identifier="2"}}
{{set_issue number="1"}}
			<a href="http://{{$gimme->publication->site}}/">ARCHE-Tэксты</a>
{{list_sections constraints="number greater_equal 30 number smaller_equal 100"}}
{{if $gimme->current_list->at_beginning}}
        <ul class="nav-main-sub">
{{/if}}
          <li><a href="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{if $gimme->current_list->at_end}}
        </ul><!-- .nav-main-sub -->
{{/if}}
{{/list_sections}}
		</li>

		<li><a href="http://arche.by/by/page/gallery/">Фотагалерэя</a></li>

	</ul>
</nav><!-- .nav-main -->
{{set_default_publication}}
{{set_issue number="1"}}
{{set_default_section}}
{{set_default_article}}
{{unset_topic}}