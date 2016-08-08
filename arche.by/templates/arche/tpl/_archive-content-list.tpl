{{assign var="first_year" value="2008"}}
{{assign var="last_year" value=$smarty.now|camp_date_format:"%Y"}}
<dl class="choose-year">
  <dt>Архіў па гадах:</dt>
  <dd>
    <ul class="archive-page-years">
{{section name=year loop=$last_year+1 max=$last_year-$first_year+1 step=-1}}
      <li{{if $smarty.section.year.first}} class="current"{{/if}}><a>{{$smarty.section.year.index}}</a></li>
{{/section}}
      <li class="linked"><a href="http://arche.bymedia.net/" target="_blank">1998—2008</a></li>
    </ul>
  </dd>
</dl><!-- .choose-year -->

{{section name=year loop=$last_year+1 max=$last_year-$first_year+1 step=-1}}
<div class="archive-page-list{{if $smarty.section.year.first}} visible{{/if}}">
<dl class="months">
  {{section name=month loop=13 start=1}}
  {{assign var="has_articles" value=false}}
	{{assign var="start_date" value="`$smarty.section.year.index`-`$smarty.section.month.index`-01"|date_format:"%Y-%m-%d"}}
	{{assign var="end_date" value="`$smarty.section.year.index`-`$smarty.section.month.index`-31"|date_format:"%Y-%m-%d"}}
  {{assign var="date_const" value="publish_date greater_equal `$start_date` publish_date smaller_equal `$end_date`"}}
  {{list_articles length="1" constraints="type is article section greater_equal 30 section smaller_equal 100 `$date_const`" ignore_issue="true"}}{{assign var="has_articles" value=true}}{{/list_articles}}
  {{if $has_articles}}
    <dt class="month">{{"`$smarty.section.year.index`-`$smarty.section.month.index`-01"|camp_date_format:"%M"}}</dt>
    <dd class="month-articles">
      <dl class="month-sections">
      {{list_sections constraints="number greater_equal 30 number smaller_equal 100"}}
        {{list_articles constraints="type is article `$date_const`" ignore_issue="true" order="bypublishdate desc"}}
          {{if $gimme->current_list->at_beginning}}
          <dt class="name"><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></dt>
          <dd class="articles">
            <ul>
          {{/if}}
              <li>
                <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a> &gt;&gt;
                <time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}">{{$gimme->article->publish_date|camp_date_format:"%d/%m/%Y"}}</time>
              </li>
          {{if $gimme->current_list->at_end}}
            </ul>
          </dd><!-- .articles -->  
          {{/if}}
        {{/list_articles}}
      {{/list_sections}}
      </dl><!-- .month-sections -->  
    </dd><!-- .month-articles -->
  {{/if}}
  {{/section}}
</dl><!-- .months -->
</div>
{{/section}}

