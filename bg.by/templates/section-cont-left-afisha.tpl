{{ if $smarty.get.page }}{{ assign var="page" value=$smarty.get.page }}{{ else }}{{ assign var="page" value="1" }}{{ /if }}

<div class="ticker">{{ $gimme->section->name }} <a href="{{ uri options="template article-recently-commented.tpl" }}">Последние комментарии</a></div>

<ul class="afisha-tabs">
	<li class="current"><a href="">Кино</a></li>
	<li><a href="">Театры</a></li>
	<li><a href="">Музеи</a></li>
	<li><a href="">Разное</a></li>
</ul><!-- .afisha-tabs -->

<div class="afisha">

	{{ list_articles columns="12" length="108" ignore_issue="true" }}
		{{ if $gimme->current_list->row == $page }}

			<div class="afisha-item">
				<a href="{{ uri options="article" }}" class="img">{{ if $gimme->article->has_image(2) }}<img src="{{ uri options="image 2 width 230" }}" alt="{{ $gimme->article->image2->description|replace:'"':'' }}" />{{ elseif $gimme->article->has_image(1) }}<img src="{{uri options="image 1"}}" alt="{{ $gimme->article->image1->description|replace:'"':'' }}" />{{ /if }}</a>

				<div class="afisha-item-inner">
					<h2 class="afisha-item-title"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{ if $gimme->article->has_video }}<i class="ico video"></i>{{ /if }}{{ if $gimme->article->has_photo }}<i class="ico photo"></i>{{ /if }}{{ if $gimme->article->has_audio }}<i class="ico audio"></i>{{ /if }}</h2><!-- .title -->

					<div class="intro">{{ $gimme->article->Intro }}</div><!-- .intro -->

					<p><a href="{{ uri options="article" }}" class="read">Далее</a></p>

				</div><!-- .afisha-item-inner -->
			</div><!-- .afisha-item -->

		{{ /if }}
	{{ /list_articles }}

	<div class="rest-news">
		{{ list_articles columns="12" length="108" ignore_issue="true" }}
			{{ if $gimme->current_list->count > 12 }}
				{{ if $gimme->current_list->column == 1 }}
					{{ if $gimme->current_list->row==$page }}<button class="ui-widget ui-state-active ui-corner-all">{{ $gimme->current_list->row }}</button>
					{{ else }}<a class="ui-button" href="{{ uri options="section" }}?page={{ $gimme->current_list->row }}"><button class="ui-widget ui-state-default ui-corner-all">{{ $gimme->current_list->row }}</button></a>{{ /if }}
				{{ /if }}
			{{ /if }}
		{{ /list_articles }}
		&nbsp;<a class="ui-button" href="{{ uri options="issue" }}1/"><button class="ui-widget ui-state-default ui-corner-all">Еще</button></a>
	</div>

</div><!-- .afisha -->