{{include file="_html-head.tpl"}}
{{include file="header.tpl"}}
<div class="middle">
	<div class="main">
    <section class="archive">
    	<h3 class="block-title"><span>{{$gimme->section->name}}</span></h3>
    	<dl>
{{list_articles length="1" constraints="type is pdf" ignore_issue="true" order="bypublishdate asc"}}{{assign var="first_year" value=$gimme->article->publish_date|date_format:"%Y"}}{{/list_articles}}
{{assign var="last_year" value=$smarty.now|date_format:"%Y"}}
{{section name=year loop=$last_year+1 max=$last_year-$first_year+1 step=-1}}
{{section name=month loop=13 max=12 step=-1}}
{{assign var="month" value=$smarty.section.month.index|string_format:"%02d"}}
{{assign var="year" value=$smarty.section.year.index|string_format:"%04d"}}
{{assign var="start_date" value="`$year`-`$month`-01"|camp_date_format:"%Y-%m-%d"}}
{{assign var="end_date" value="`$year`-`$month`-31"|camp_date_format:"%Y-%m-%d"}}
{{assign var="date_const" value="publish_date greater_equal `$start_date` publish_date smaller_equal `$end_date`"}}
{{list_articles constraints="type is pdf `$date_const`" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
		<dt><a>{{$start_date|camp_date_format:"%M %Y"}}</a></dt>
		<dd>
			<ul>
{{/if}}
{{list_article_attachments length="1"}}
				<li><a href="http://{{$gimme->publication->site}}/attachment/{{$gimme->attachment->identifier}}/{{$gimme->attachment->file_name|escape:'url'}}">{{$gimme->article->name}} - {{$gimme->attachment->description}}, {{$gimme->attachment->size_kb}}Kb</a>&nbsp;<time datetime="{{$gimme->article->publish_date|date_format:"%Y-%m-%d"}}">{{$gimme->article->publish_date|date_format:"%d.%m.%Y"}}</time></li>
{{/list_article_attachments}}
{{if $gimme->current_list->at_end}}
			</ul>
		</dd>
{{/if}}
{{/list_articles}}
{{/section}}
{{/section}}
      </dl>
    </section><!-- .archive -->
    {{include file="tpl/_banner-page-bottom-728x90.tpl"}}
  </div><!-- .main -->
{{include file="tpl/section-aside.tpl"}}
</div><!-- .middle -->
{{include file="footer.tpl"}}