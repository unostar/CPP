<footer class="footer">
	<nav>
		<ul class="nav-main">
{{set_issue number="1"}}

			<li><a>{{if $gimme->language->code=="ru"}}Новости{{else}}News{{/if}}</a>
				<ul class="second-level">
{{list_sections constraints="number greater 1 number smaller 100"}}
					<li><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{/list_sections}}
				</ul><!-- .second-level -->
			</li>

			<li><a>{{if $gimme->language->code=="ru"}}Спецпроекты{{else}}Special Projects{{/if}}</a>
				<ul class="second-level">
{{list_sections constraints="number greater 100 number smaller 200"}}
					<li><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{/list_sections}}
				</ul><!-- .second-level -->
			</li>

			<li><a>{{if $gimme->language->code=="ru"}}Советы{{else}}Advices{{/if}}</a>
				<ul class="second-level">
{{list_sections constraints="number greater 200 number smaller 300"}}
					<li><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{/list_sections}}
				</ul><!-- .second-level -->
			</li>

			<li><a>{{if $gimme->language->code=="ru"}}Отдых и развлечения{{else}}Leisure & entertainment{{/if}}</a>
				<ul class="second-level">
{{list_sections constraints="number greater 300 number smaller 400"}}
					<li><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{/list_sections}}
				</ul><!-- .second-level -->
			</li>

			<li><a>{{if $gimme->language->code=="ru"}}Читатели пишут{{else}}Readers write{{/if}}</a>
				<ul class="second-level">
{{list_sections constraints="number greater 400 number smaller 500"}}
					<li><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{/list_sections}}
				</ul><!-- .second-level -->
			</li>

			<li><a>{{if $gimme->language->code=="ru"}}О нас{{else}}About us{{/if}}</a>
				<ul class="second-level">
{{list_sections constraints="number greater 600 number smaller 700"}}
					<li><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{/list_sections}}
				</ul><!-- .second-level -->
			</li>

{{set_issue number="1"}}{{set_default_section}}{{set_default_article}}{{unset_topic}}
		</ul><!-- .nav-main -->
	</nav>
	<p class="copyright"><small>© {{$smarty.now|date_format:"%Y"}} Витебский курьер</small></p><!-- .copyright -->
</footer><!-- .footer -->
{{include file="_script-attachments.tpl"}}
</body>
</html>