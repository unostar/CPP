<div class="section-column-3 clearfix">

{{ unset_topic }}
{{ include file="newspaper/front-column-2-radio-box.tpl" }}

<div id="box-300" >
  <div class="box-top">
    {{ set_current_issue }}
    <p>ШТОТЫДНЁВІК “ТВОЙ СТЫЛЬ”, <span>{{ $gimme->issue->name }}</span></p>
  </div>
  <div class="box-content">
  <p class="date"><span>{{ $gimme->issue->publish_date|camp_date_format:"%d %M %Y" }} г.</span></p>
  
  {{ list_sections constraints="number greater 5 number smaller 121" }}
  {{ list_articles length="10" constraints="OnFrontPage is off OnSection is on" order="bypublishdate desc"}}
    <p><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
  {{ /list_articles }}
  {{ /list_sections }}
  </div>
  <div class="box-bottom">&nbsp;</div>
</div>
</div>