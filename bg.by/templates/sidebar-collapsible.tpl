<div class="collapsible currency">
	<h3 class="title">Курсы валют</h3><!-- .title -->

	<div class="box">
		<p><span>Курсы валют Нац.Банка РБ</span> / <a href="http://nbrb.by/statistics/rates/RatesDaily.asp">Смотреть еще</a></p>
		
		{{ include file="sidebar-currency-content.tpl" }}
	</div><!-- .box -->
</div><!-- .collapsible currency -->

<div class="collapsible transport">
	<h3 class="title">Транспорт Бреста</h3><!-- .title -->

	<div class="box">
		{{ list_articles length="1" constraints="issue is 1 section is 330" }}
			<a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>

			{{ list_article_attachments }}
				{{ if $gimme->current_list->at_beginning }}
					<ul>
				{{ /if }}

				<li><a href="{{ uri options="article" }}">{{ $gimme->attachment->description }}</a></li>

				{{ if $gimme->current_list->at_end }}
					</ul>
				{{ /if }}
			{{ /list_article_attachments }}

		{{ /list_articles }}
	</div><!-- .box -->
</div><!-- .collapsible -->

<div class="collapsible vacancies">
	<h3 class="title">Работа сегодня</h3><!-- .title -->

	<div class="box">
		{{ list_articles length="5" constraints="section is 320" ignore_issue="true" order="bypublishdate desc" }}
			{{ if $gimme->current_list->at_beginning }}
				<ul>
			{{ /if }}

			<li><a href="{{ uri options="article" }}">{{ list_article_attachments length="1" }}{{ $gimme->attachment->description }}{{ /list_article_attachments }}</a></li>

			{{ if $gimme->current_list->at_end }}
				</ul>
			{{ /if }}

		{{ /list_articles }}
	</div><!-- .box -->
</div><!-- .collapsible -->

