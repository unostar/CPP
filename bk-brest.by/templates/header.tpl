<!-- Шапка -->
<div class="l-header">
  <div class="b-h-mid">
    <h1><a href="/">Брестский <br /> <b>Курьер</b><span></span></a></h1>
    <div class="b-h-mid_date g-clean">
      <span class="g-left"><em>{{$smarty.now|camp_date_format:"%e %M %Y года</em> , %W"}}</span>
      <span class="g-right">Последнее обновление: <em>{{list_articles length="1" order="bypublishdate desc" ignore_issue="true" ignore_section="true"}}{{$gimme->article->last_update|camp_date_format:"%d/%m, %H:%i"}}{{/list_articles}}</em></span>
    </div>
    <div class="b-h-mid_banner">{{include file="_banner-header-160x120.tpl"}}</div>
    <div class="b-h-mid_weather">
      <div class="b-h-mid_weather-title">
        <span class="b-h-mid_wt-city">БРЕСТ</span>
        <a id="prev_tod" href="#" class="g-iblockie b-h-mid_wt-arrleft"></a>
        <a id="next_tod" href="#" class="g-iblockie b-h-mid_wt-arrright"></a>
      </div>
      <div class="b-h-mid_weather-body">
        <div id="gis_weather">{{include file="_weather.tpl"}}</div>
      </div>
      <div class="b-h-mid_weather-footer">
        <a href="http://gismeteo.by/city/hourly/4912" target="_blank">подробнее <big>&#187;</big></a>
      </div>
    </div>
  </div>
{{if $gimme->issue->number==1}}{{set_current_issue}}{{/if}}
  <ul class="b-h-mainmenu">
{{list_sections constraints="number smaller 100"}}
    <li{{if $gimme->section->number == $gimme->default_section->number}} class="active"{{/if}}><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></li>
{{/list_sections}}
  </ul>

  <ul class="b-h-submenu">
{{list_sections constraints="number greater_equal 100 number smaller 200"}}
    <li{{if $gimme->section->number == $gimme->default_section->number}} class="active"{{/if}}><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></li>
{{/list_sections}}
   <li><a href="https://twitter.com/bk_brest" class="twitter" target="_blank"><img src="http://twitter-badges.s3.amazonaws.com/t_small-a.png" alt="Follow rhby on Twitter" /></a></li>
  </ul>

  <div class="b-h-top">
    <strong>www.bk-brest.by</strong>
    <ul class="b-h-top_menu">
{{local}}{{set_issue number="1"}}
{{list_sections constraints="number greater_equal 300 number smaller 350"}}
      <li><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></li>
{{/list_sections}}{{/local}}
      <li><a href="{{uri options="template contact_form.tpl"}}" class="contact_form_link">Обратная связь</a></li>
      <li><a href="http://{{$gimme->publication->site}}/feed/{{if $gimme->default_section->number == 210}}news{{else}}index{{/if}}.rss" title="Подписаться на RSS" class="b-h-top_rss">RSS<b class="g-bg"></b></a></li>
    </ul>
    <div class="b-f-search m-h-search">
{{search_form template="archive.tpl" submit_button="" button_html_code="class=\"b-f-search_submit g-iblock\""}}
    <input type="text" class="text" name="f_search_keywords" maxlength="255" value="Поиск" />
{{/search_form}}
    </div>
  </div>
</div>
<!-- //шапка -->
