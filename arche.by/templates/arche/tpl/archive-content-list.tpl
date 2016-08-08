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
  {{section name=month loop=13 start=1}}{{assign var="month" value=$smarty.section.month.index|string_format:"%02d"}}
    <dt class="month" data-date="{{"`$smarty.section.year.index`-`$month`"}}">{{"`$smarty.section.year.index`-`$smarty.section.month.index`-01"|camp_date_format:"%M"}}</dt>
    <dd class="month-articles">
      <dl class="month-sections">
{{* search ajax *}}
      </dl><!-- .month-sections -->  
    </dd><!-- .month-articles -->
  {{/section}}
</dl><!-- .months -->
</div>
{{/section}}
