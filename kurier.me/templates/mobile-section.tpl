{{include file="mobile_header.tpl"}}

<dl class="peek section">
	<dt><h2><a href="/{{$gimme->language->code}}/{{$gimme->issue->url_name}}/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></h2></dt>
	<dd>
		<ul>
{{list_articles length="20" ignore_publication="true" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->index==1}}
			<li>
				{{if $gimme->article->has_image(1)}}<a href="{{uri options="image 1"}}"><img src="{{$gimme->article->image1->thumbnailurl}}" alt="{{$gimme->article->name|escape:'html'}}"></a>{{/if}}
				<h3><a href="/{{$gimme->language->code}}/{{$gimme->default_issue->url_name}}/{{$gimme->default_section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h3> <small class="time">{{$gimme->article->publish_date|camp_date_format:"%d.%m.%Y"}}</small>
			</li>
{{else}}
			<li><h3><a href="/{{$gimme->language->code}}/{{$gimme->default_issue->url_name}}/{{$gimme->default_section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h3> <small class="time">{{$gimme->article->publish_date|camp_date_format:"%d.%m.%Y"}}</small></li>
{{/if}}
{{/list_articles}}
		</ul>
	</dd>
</dl><!-- .peek -->

<ul class="kinda-nav">
	<li><a href="/">Перейти на главную страницу</a></li>
</ul><!-- .kinda-nav -->

{{include file="mobile_footer.tpl"}}