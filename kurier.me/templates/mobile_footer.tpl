<div class="footer">
	<ul id="nav">

		<li>{{if $gimme->language->code=="ru"}}Новости:{{else}}News:{{/if}}
			<ul class="second-level">
{{list_sections constraints="number smaller 100"}}
				<li><a href="/{{$gimme->language->code}}/{{$gimme->default_issue->url_name}}/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a>{{if !$gimme->current_list->at_end}},{{/if}}</li>
{{/list_sections}}
			</ul><!-- .second-level -->
		</li>

		<li>{{if $gimme->language->code=="ru"}}Спецпроекты:{{else}}Special Projects:{{/if}}
			<ul class="second-level">
{{list_sections constraints="number greater 100 number smaller 200"}}
				<li><a href="/{{$gimme->language->code}}/{{$gimme->default_issue->url_name}}/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a>{{if !$gimme->current_list->at_end}},{{/if}}</li>
{{/list_sections}}
			</ul><!-- .second-level -->
		</li>

		<li>{{if $gimme->language->code=="ru"}}Советы:{{else}}Advices:{{/if}}
			<ul class="second-level">
{{list_sections constraints="number greater 200 number smaller 300"}}
				<li><a href="/{{$gimme->language->code}}/{{$gimme->default_issue->url_name}}/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a>{{if !$gimme->current_list->at_end}},{{/if}}</li>
{{/list_sections}}
			</ul><!-- .second-level -->
		</li>

		<li>{{if $gimme->language->code=="ru"}}Отдых и развлечения:{{else}}Relax:{{/if}}
			<ul class="second-level">
{{list_sections constraints="number greater 300 number smaller 400"}}
				<li><a href="/{{$gimme->language->code}}/{{$gimme->default_issue->url_name}}/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a>{{if !$gimme->current_list->at_end}},{{/if}}</li>
{{/list_sections}}
			</ul><!-- .second-level -->
		</li>

		<li>{{if $gimme->language->code=="ru"}}Читатели пишут:{{else}}Readers response:{{/if}}
			<ul class="second-level">
{{list_sections constraints="number greater 400 number smaller 500"}}
				<li><a href="/{{$gimme->language->code}}/{{$gimme->default_issue->url_name}}/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a>{{if !$gimme->current_list->at_end}},{{/if}}</li>
{{/list_sections}}
			</ul><!-- .second-level -->
		</li>

		<li>{{if $gimme->language->code=="ru"}}О нас:{{else}}Readers response:{{/if}}
			<ul class="second-level">
{{list_sections constraints="number greater 600 number smaller 700"}}
				<li><a href="/{{$gimme->language->code}}/{{$gimme->default_issue->url_name}}/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a>{{if !$gimme->current_list->at_end}},{{/if}}</li>
{{/list_sections}}
			</ul><!-- .second-level -->
		</li>

{{list_sections constraints="number greater 500 number smaller 600"}}
    <li><a href="/{{$gimme->language->code}}/{{$gimme->default_issue->url_name}}/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{/list_sections}}

	</ul><!-- #nav -->
{{set_publication identifier="1"}}
	<p class="copyright"><small>&copy; Витебский курьер, 2011</small></p>
	<p class="go-to-full-site"><a href="http://{{$gimme->publication->site}}">Полный сайт</a></p>

</div><!-- .footer -->
</body>
</html>