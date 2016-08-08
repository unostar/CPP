{{* problems with list??? will remove now & set var manually
list_articles length="1" order="bypublishdate asc" constraints="type is article" ignore_issue="true" ignore_section="true"}}{{assign var="first_year" value=$gimme->article->publish_date|camp_date_format:"%Y"}}{{/list_articles
*}}{{assign var="first_year" value="2010"}}
{{list_articles length="1" order="bypublishdate desc" constraints="type is article" ignore_issue="true" ignore_section="true"}}{{assign var="last_year" value=$gimme->article->publish_date|camp_date_format:"%Y"}}{{/list_articles}}
<div class="c-archiv">
{{section name=year loop=$last_year+1 max=$last_year-$first_year+1 step=-1}}
<strong>{{$smarty.section.year.index}} год</strong>
<dl class="list">
{{section name=month loop=13 start=1}}
	<dt>{{"`$smarty.section.year.index`-`$smarty.section.month.index`-01"|camp_date_format:"%M"}}</dt>
    <dd>
{{section name=day loop=32 start=1}}
{{assign var="date" value="`$smarty.section.year.index`-`$smarty.section.month.index`-`$smarty.section.day.index`"|camp_date_format:"%Y-%m-%d"}}
{{list_articles constraints="type is article publish_date is $date" ignore_issue="true" ignore_section="true"}}
      <a href="/by/page/{{$gimme->article->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}} ({{$gimme->article->publish_date|camp_date_format:"%d.%m.%Y"}})<br />
{{/list_articles}}
{{/section}}
    </dd>
{{/section}}
</dl>
{{/section}}
</div>