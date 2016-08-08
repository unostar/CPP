<div class="news-box">

{{ list_articles length="1" constraints="section is $n_section" ignore_issue="true" order="bypublishdate desc" }}

	{{ assign var="n_article" value = $gimme->article->number }}
	<p class="subtitle"><a href="{{ uri options="section" }}">{{ $gimme->section->name }} &gt;&gt;</a></p>

	{{ if $gimme->article->has_image(1) }}
		<a href="{{ uri options="article" }}"><img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description|escape:'quotes' }}" /></a>
	{{ /if }}

	<h4><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{ include file="newspaper/icons.tpl" }}</h4>

	{{ if $gimme->article->author->name != "" }}
		<p class="byline">Піша <a href="{{ uri options='template newspaper/author.tpl' }}">{{ $gimme->article->author->name }}</a>&nbsp;&nbsp;I&nbsp;&nbsp;{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }}</p>
	{{ /if }}

	<div class="intro">{{ $gimme->article->Intro }}</div>

	<p class="links">
		{{ if $gimme->article->comments_enabled }}
			{{ assign var="flag1" value="0" }}
			<a href="{{ uripath options='article' }}#add_comment">Каментарыi
				{{ list_article_comments order="bydate asc"}}
					{{ if $gimme->current_list->at_beginning }} 
						({{ $gimme->current_list->count }})
						{{ assign var="flag1" value="1" }}
					{{ /if }}
				{{ /list_article_comments }}
			{{ if $flag1 == "0" }}(0){{ /if }}
			</a> I 
		{{ /if }} <a href="{{ uri options='article' }}">Чытай далей</a>
	</p>
{{ /list_articles }}

{{ list_articles length="3" constraints="section is $n_section" ignore_issue="true" order="bypublishdate desc" }}
	{{ if $gimme->current_list->at_beginning }} 
		<ul class="related-articles">
	{{ /if }}

	{{ if ($gimme->article->number == $n_article ) }}
	{{ else }}
		<li><a href="{{ uri options='article' }}">{{ $gimme->article->name }}</a>{{ include file="newspaper/icons.tpl" }}</li>
	{{ /if }}

	{{ if $gimme->current_list->at_end }} 
		</ul>
	{{ /if }}

{{ /list_articles }}
</div>