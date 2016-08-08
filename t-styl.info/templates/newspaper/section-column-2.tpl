<div class="section-column-2 clearfix">
<div class="column-2-content">

{{if $smarty.get.page}}
	{{assign var="page" value=$smarty.get.page}}
{{else}}
	{{assign var="page" value="1"}}
{{/if}}

{{ local }}
{{ set_default_issue }}
{{ set_default_section }}

	{{ list_articles length="1" }}
		{{ assign var="n_article" value=$gimme->article->number }}

		{{ if $page == "1" }}

		<div class="main-box-s clearfix">
			{{ if $gimme->article->has_image(2) }}<img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" class="day-img" />{{ /if }}
			<h3 class="day"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
			<p class="byline" style="padding-top:10px;">{{ if $gimme->article->author->name == "" }}{{ else }}<a href="{{ uri options="template newspaper/author.tpl" }}">{{ $gimme->article->author->name }}</a><br/>{{/if}}{{ $gimme->article->publish_date|camp_date_format:"%d %m %Y" }}</p>
			<div class="s-intro">{{ $gimme->article->Intro }}{{ include file="newspaper/icons.tpl" }}</div>
			{{ if $gimme->article->comments_enabled }}
			<p><a class="smore" href="{{ uri options="article" }}#add_comment">Каментары {{ list_article_comments order="bydate asc"}}
			{{ if $gimme->current_list->at_beginning }} ({{ $gimme->current_list->count }}) {{ /if }}
			{{ /list_article_comments }}
			{{ if $gimme->prev_list_empty }}(0){{ /if }}</a>
			{{ /if }}
			<span class="divider">|</span><a class="smore" href="{{ uri options="article" }}">Чытай далей</a></p>
		</div>

		{{ /if }}
	{{ /list_articles }}
{{ /local }}

	{{ list_articles columns="7" ignore_issue="true" length="35" }}
		{{if $gimme->current_list->row == $page || $page > 5 }}

			{{ if $gimme->current_list->at_beginning && $gimme->current_list->count > 1 }}
				<h2 class="other">Iншыя Артыкулы рубрыкi <span style="font-size:9px;">&lt;&lt;</span> {{ $gimme->section->name }} <span style="font-size:9px;">&gt;&gt;</span></h2>
			{{ /if }}

			{{ if ($gimme->article->number == $n_article ) }}

			{{ else }}
				<div class="article-box">

				{{ if $gimme->article->has_image(1) }}
					<img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description }}" width="120" />
				{{ /if }}

				<h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
				<p class="author">
				{{ if $gimme->article->author->name != "" }}
					Піша <a href="{{ uri options="template newspaper/author.tpl" }}">{{ $gimme->article->author->name }}</a> | 
				{{ /if }}
				<span style="font-size:11px;">{{ $gimme->article->publish_date|camp_date_format:"%d %m %Y" }}</span></p>
				{{ $gimme->article->Intro }}{{ include file="newspaper/icons.tpl" }}<p style="padding:0; margin:0;">

				{{ if $gimme->article->comments_enabled }}
					<a class="smore" href="{{ uri options="article" }}#add_comment" style="padding:0 7px 0 0; ">Каментары {{ list_article_comments order="bydate asc"}}{{ if $gimme->current_list->at_beginning }} ({{ $gimme->current_list->count }}) {{ /if }}{{ /list_article_comments }}
					{{ if $gimme->prev_list_empty }}(0){{ /if }}</a>
				{{ /if }}
				<span class="divider">|</span><a class="smore" href="{{ uri options="article" }}">Чытай далей</a></p>
				</div>
			{{ /if }}

		{{ /if }}
	{{ /list_articles }}

{{ list_articles columns="7" ignore_issue="true" length="35" }}
	{{if $gimme->current_list->count > 7}}
		{{if $gimme->current_list->at_beginning}}<ul class="section-pagination">{{/if}}

		{{if $gimme->current_list->column == 1}}

			{{if $gimme->current_list->row == $page}}
				<li>{{$gimme->current_list->row}}</li>
			{{else}}
				<li><a href="{{ local }}{{ set_default_issue }}{{ set_default_section }}{{ uri options="section" }}{{ /local }}?page={{$gimme->current_list->row}}">{{$gimme->current_list->row}}</a></li>
			{{/if}}

		{{/if}}

		{{if $gimme->current_list->at_end}}</ul>{{/if}}
	{{/if}}
{{/list_articles}}

</div>
</div>