{{* collecting post from calendar and storing it into variable for later usage *}}
{{* Date from calendar:{{ $smarty.get.date }}<br/> *}}
{{ assign var="post" value=$smarty.get.date }}

{{* checking if there is actually any articles on given date and if so, then rendering of page will begin. however if not, check will return null and will print out that archive is empty... *}}


<div class="ticker">Архив "Брестская газета" - {{ $post|camp_date_format:"%d %M %Y" }}</div>

		{{ list_sections order="bypublishdate desc" constraints="number greater 1 number smaller 471" }}
			{{ list_articles order="bypublishdate desc" ignore_issue="true" constraints="publish_date is $post"}}

				{{ if $gimme->current_list->at_beginning }}
{{ assign var="check" value="1" }}
				<div class="title">{{ $gimme->section->name }}</div>
					<div class="rest-news">
                                {{ /if }}

				<h3 class="section-block"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
                               {{ if $gimme->current_list->at_end }}
                               </div>
                               {{ /if }}
				{{ /list_articles }}
	{{ /list_sections }}

{{ if $check != "1" }}
<p>В архиве нет статей по выбранной дате. Выберите другую дату для поиска (даты выпусков отмечены ).</p>
{{ /if }}

