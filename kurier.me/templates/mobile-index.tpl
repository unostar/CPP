{{include file="mobile_header.tpl"}}
<dl class="peek">
{{list_articles length="4" constraints="type is article section smaller 100" ignore_publication="true" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
	<dt><h2>{{if $gimme->language->code=="ru"}}Последние новости{{else}}Latest News{{/if}}</h2></dt>
	<dd>
		<ul>
{{/if}}
{{if $gimme->current_list->index==1}}
			<li>
				{{if $gimme->article->has_image(1)}}<a href="{{uri options="image 1"}}"><img src="{{$gimme->article->image1->thumbnailurl}}" alt="{{$gimme->article->name|escape:'html'}}"></a>{{/if}}
				<h3><a href="/{{$gimme->language->code}}/{{$gimme->default_issue->url_name}}/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h3> <small class="time">{{$gimme->article->publish_date|camp_date_format:"%d.%m.%Y"}}</small>
			</li>
{{else}}
			<li><h3><a href="/{{$gimme->language->code}}/{{$gimme->default_issue->url_name}}/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h3> <small class="time">{{$gimme->article->publish_date|camp_date_format:"%d.%m.%Y"}}</small></li>
{{/if}}
{{if $gimme->current_list->at_end}}
		</ul>
	</dd>
{{/if}}
{{/list_articles}}

{{list_sections constraints="number smaller 100"}}
{{list_articles length="4" constraints="type is article" ignore_publication="true" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
	<dt><h2><a href="/{{$gimme->language->code}}/{{$gimme->default_issue->url_name}}/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></h2></dt>
	<dd>
		<ul>
{{/if}}
{{if $gimme->current_list->index==1}}
			<li>
				{{if $gimme->article->has_image(1)}}<a href="{{uri options="image 1"}}"><img src="{{$gimme->article->image1->thumbnailurl}}" alt="{{$gimme->article->name|escape:'html'}}"></a>{{/if}}
				<h3><a href="/{{$gimme->language->code}}/{{$gimme->default_issue->url_name}}/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h3> <small class="time">{{$gimme->article->publish_date|camp_date_format:"%d.%m.%Y"}}</small>
			</li>
{{else}}
			<li><h3><a href="/{{$gimme->language->code}}/{{$gimme->default_issue->url_name}}/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h3> <small class="time">{{$gimme->article->publish_date|camp_date_format:"%d.%m.%Y"}}</small></li>
{{/if}}
{{if $gimme->current_list->at_end}}
		</ul>
	</dd>
{{/if}}
{{/list_articles}}
{{/list_sections}}
</dl><!-- .peek -->
{{include file="mobile_footer.tpl"}}