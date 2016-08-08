<div class="l-header">
  <div class='b-h-banner'>{{include file="_banner-header-990x60.tpl"}}</div>
  <h1><a href="/"><b>Gorad.by</b><br />могилёвский информационный сайт<span></span></a></h1>
  <ul class="b-h-mainmenu g-clean">{{set_issue number="1"}}
{{list_sections constraints="number greater 899 number smaller 910"}}
    <li><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></li>
{{/list_sections}}
    <li><a href="http://feeds.feedburner.com/Goradby"><i class="ico ico-rss"></i>RSS</a></li>
    <li class="twitter"><a href="https://twitter.com/GoradNews" class="twitter-follow-button" data-show-count="false" data-lang="ru">Читать @GoradNews</a></li>
    {{* <li><a href="http://www.twitter.com/gorad_news" target="_blank"><img src="http://twitter-badges.s3.amazonaws.com/twitter-c.png" height="18" align="top" alt="Follow gorad_news on Twitter" /></a></li> *}}
  </ul>{{set_default_issue}}
  <ul class="b-h-submainmenu g-clean">
{{list_sections constraints="number smaller 100"}}
    <li{{if $gimme->section->number == $gimme->default_section->number}} class="active"{{/if}}><a href="/by/page/{{$gimme->section->url_name}}"><span>{{$gimme->section->name}}</span></a></li>
{{/list_sections}}
  </ul>
  <form class="form-h-search" method="post" action="/by/page/archive" name="search_articles">
  <fieldset><legend>Поиск по сайту</legend>
    <input type="hidden" value="2" name="tpl" />
    <input type="hidden" value="Шукаць" name="f_search_articles" />
    <div class="g-diblock"><input type="text" class="text" value="{{$gimme->search_articles_action->search_phrase}}" name="f_search_keywords" /></div>
    <div class="g-diblock"><span class="button-main"><input type="submit" name="f_search_articles" class="button-main-i" value="Шукаць" /></span></div>
  </fieldset>
  </form>
</div>
<noscript>
<div class="notice noscript ui-corner-all"><p><span class="ui-icon-alert"></span>
Гэты сайт для сваёй работы выкарыстоўвае Javascript. Здаецца гэта тэхналогія адключана ці не падтрымліваецца вашым браўзэрам.
Калі ласка, праверце налады браўзэра і ўключыце Javascript.
Вы можаце скарыстацца палегчанай версіяй сайта, прыдатнай таксама для любых мабільных прылад.
</p></div>
</noscript>
{{set_issue number="1"}}
{{set_default_section}}
{{set_default_article}}
