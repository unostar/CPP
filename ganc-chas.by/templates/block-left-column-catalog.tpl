<div class="b-main b-info">
	<a href="/by/page/catalog/" class="header-blue">Каталог товаров и услуг</a>

	<dl>
		<dt>{{list_sections constraints="number is 310"}}<a href="{{uri options="section"}}" class="header-blue">{{$gimme->section->name}}</a>{{/list_sections}}</dt>
		<dd>
			<ul class="list-spec">
				{{list_articles constraints="section is 310"}}
				<li><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></li>
				{{/list_articles}}
			</ul>
		</dd>
	</dl>

{{*list_articles length="1" constraints="type is article section is 150" ignore_issue="true" order="bypublishdate desc"}}
      <div class="b-articlesmall">
        <a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="header-article">{{$gimme->article->name}}</a>
        {{if $gimme->article->has_image(1)}}<span class="b-article_img"><a class="fancy" href="{{uri options="image 1"}}" title="{{$gimme->article->image1->description}}"><img src="{{uri options="image 1 38"}}" alt="{{$gimme->article->image1->description}}" width="190" /></a></span>{{/if}}
        <div class="intro">{{$gimme->article->intro}}{{if $gimme->article->comment_count}} <a href="{{uri options="article"}}#comments" class="link-article_name"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}</a>{{/if}}</div>
			</div>
{{/list_articles*}}
</div>
