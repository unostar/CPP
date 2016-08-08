{{ if $smarty.get.page }}{{ assign var="page" value=$smarty.get.page }}{{ else }}{{ assign var="page" value="1" }}{{ /if }}

{{ list_articles columns="12" constraints="has_photo is on" ignore_issue="true" ignore_section="true" order="bypublishdate desc" }}
	{{ if $gimme->current_list->row == $page }}

		<div class="article-preview g-clean">

			{{ if $gimme->article->has_image(1) }}
				<a href="/by/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}" class="image{{ if $gimme->current_list->column == 1 }} small{{ /if }}"><img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description }}" /></a>
			{{elseif $gimme->section->number == 150}}
				<a href="/by/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}" class="image wide{{ if $gimme->current_list->column == 1 }} small{{ /if }}"><img src="{{uri options="image 3 height 88"}}" alt="{{$gimme->article->image3->description|escape}}" {{if $gimme->article->image4->photographer}}title="{{$gimme->article->name|escape:'html'}} / Фота: {{$gimme->article->image3->photographer|escape}}"{{/if}} height="90" /></a>
			{{/if}}

			<h3><a href="/by/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}">{{ $gimme->article->name|escape:'html' }}{{ if $gimme->article->has_video }}<i class="ico video"></i>{{ /if }}{{ if $gimme->article->has_photo }}<i class="ico photo"></i>{{ /if }}</a></h3>

			{{ if $gimme->section->url_name == "bigpicture" }}
				{{ $gimme->article->intro|strip_tags:false|truncate:"400" }}
			{{ else }}
				{{ $gimme->article->intro|strip_tags:false }}
			{{ /if }}


		</div><!-- .article-preview -->

	{{ /if }}
{{ /list_articles }}

{{ list_articles columns="12" constraints="has_photo is on" ignore_issue="true" ignore_section="true" order="bypublishdate desc" }}
	{{ if $gimme->current_list->count > 12 }}
		{{ if $gimme->current_list->at_beginning }}<div class="b-pages"><strong>старонкі:</strong>{{ /if }}

		{{ if $gimme->current_list->column == 1 }}
			{{ if $gimme->current_list->row==$page }}<span>{{ $gimme->current_list->row }}</span>
			{{ else }}<a href="/by/page/photo?page={{ $gimme->current_list->row }}">{{ $gimme->current_list->row }}</a>{{ /if }}
		{{ /if }}

		{{ if $gimme->current_list->at_end }}</div>{{ /if }}
	{{ /if }}
{{ /list_articles }}
