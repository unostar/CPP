{{ if $smarty.get.page }}{{ assign var="page" value=$smarty.get.page }}{{ else }}{{ assign var="page" value="1" }}{{ /if }}

{{ list_articles columns="12" constraints="has_video is on" ignore_issue="true" ignore_section="true" order="bypublishdate desc" }}
	{{ if $gimme->current_list->row == $page }}

		<div class="article-preview g-clean">

			{{ if $gimme->article->has_image(1) }}
				<a href="/by/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}" class="image{{ if $gimme->current_list->column == 1 }} small{{ /if }}"><img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description }}" /></a>
			{{ /if }}

			<h3><a href="/by/page/{{ $gimme->section->url_name }}/{{ $gimme->article->number }}">{{ $gimme->article->name|escape:'html' }}{{ if $gimme->article->has_video }}<i class="ico video"></i>{{ /if }}</a></h3>

			{{ $gimme->article->intro|strip_tags:false }}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}

		</div><!-- .article-preview -->

	{{ /if }}
{{ /list_articles }}

{{ list_articles columns="12" constraints="has_video is on" ignore_issue="true" ignore_section="true" order="bypublishdate desc" }}
	{{ if $gimme->current_list->count > 12 }}
		{{ if $gimme->current_list->at_beginning }}<div class="b-pages"><strong>старонкі:</strong>{{ /if }}

		{{ if $gimme->current_list->column == 1 }}
			{{ if $gimme->current_list->row==$page }}<span>{{ $gimme->current_list->row }}</span>
			{{ else }}<a href="/by/page/video?page={{ $gimme->current_list->row }}">{{ $gimme->current_list->row }}</a>{{ /if }}
		{{ /if }}

		{{ if $gimme->current_list->at_end }}</div>{{ /if }}
	{{ /if }}
{{ /list_articles }}
