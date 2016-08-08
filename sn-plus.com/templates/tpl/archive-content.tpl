{{if $smarty.get.date && $smarty.get.action=="calendar"}}
  {{assign var="date" value=$smarty.get.date|camp_date_format:"%Y-%m-%d"}}
  {{assign var="label" value=$smarty.get.date|camp_date_format:"%d.%m.%Y"}}
  {{assign var="label" value="Статьи за `$label`"}}
  {{assign var="date_const" value="publish_date is `$date`"}}
{{else}}
  {{if $smarty.get.date}}
    {{assign var="date_const" value=$smarty.get.date|camp_date_format:"%Y-%m"}}
  {{elseif $smarty.get.year && $smarty.get.month}}
    {{assign var="date_const" value="`$smarty.get.year`-`$smarty.get.month`-01"|camp_date_format:"%Y-%m"}}
  {{else}}
    {{assign var="date_const" value=$smarty.now|camp_date_format:"%Y-%m"}}
  {{/if}}
  {{assign var="start_date" value="`$date_const`-01"|camp_date_format:"%Y-%m-%d"}}
  {{assign var="end_date" value="`$date_const`-31"|camp_date_format:"%Y-%m-%d"}}
  {{assign var="date" value=$start_date}}
  {{assign var="label" value=$date|camp_date_format:"%M %Y"}}
  {{assign var="label" value="Архив за `$label`"}}
  {{assign var="date_const" value="publish_date greater_equal `$start_date` publish_date smaller_equal `$end_date`"}}
{{/if}}

<h2>{{$label}}</h2>

<section class="archive">

	<div class="select-date">
	<form name="select-date" action="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/" method="get">
		<p>
			<label>Год:</label>
			<select name="year">
{{list_articles length="1" ignore_issue="true" ignore_section="true" order="bypublishdate asc"}}{{assign var="first_year" value=$gimme->article->publish_date|date_format:"%Y"}}{{/list_articles}}
{{assign var="last_year" value=$smarty.now|date_format:"%Y"}}
{{section name=year loop=$last_year+1 max=$last_year-$first_year+1 start=$first_year}}
				<option value="{{$smarty.section.year.index}}" {{if $smarty.section.year.index == $date|camp_date_format:"%Y" }}selected="selected"{{/if}}>{{$smarty.section.year.index}}</option>
{{/section}}
			</select>
		</p>
		<p>
			<label>Месяц:</label>
			<select name="month">
{{section name=month loop=13 start=1}}
				<option value="{{$smarty.section.month.index|string_format:"%02d"}}" {{if $smarty.section.month.index == $date|camp_date_format:"%m"}}selected="selected"{{/if}}>{{"2011-`$smarty.section.month.index`-01"|camp_date_format:"%M"}}</option>
{{/section}}
			</select>
		</p>
    <p><input type="submit" value="{{if $gimme->language->code=="ru"}}Искать{{else}}Search{{/if}}" /></p>
	</form>
	</div><!-- .select-date -->

{{list_sections constraints="number greater 1 number smaller 200"}}
{{list_articles constraints="`$date_const`" ignore_issue="true" order="bypublishdate asc"}}
{{if $gimme->current_list->at_beginning}}
	<section class="archive-section">
		<h3 {{if $gimme->section->number==10}}class="selected"{{elseif $gimme->section->number==20}}class="selected-persons"{{/if}}><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></h3>
		<ul>
{{/if}}
			<li><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a> &rarr; <time datetime="{{$gimme->article->publish_date|date_format:"%Y-%m-%d"}}">{{$gimme->article->publish_date|date_format:"%d.%m.%Y"}}</time></li>
{{if $gimme->current_list->at_end}}
		</ul>
	</section><!-- .archive-section -->
{{/if}}
{{assign var="found" value=1}}
{{/list_articles}}
{{/list_sections}}
{{if !$found}}<section class="archive-section"><h3>В заданном временном интервале отсутствуют опубликованные статьи.</h3></section><!-- .archive-section -->{{/if}}

</section><!-- .archive -->
