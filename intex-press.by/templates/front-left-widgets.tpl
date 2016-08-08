<div class="clearfix">
<div class="home-widgets">

<p class="widget-title weather">Погода на завтра</p>
{{include file="front-left-widgets-weather.tpl"}}
<p class="widget-link"><a href="http://www.gismeteo.by/" target="_blank">Смотреть еще</a></p>
<div class="widgets-divider"><hr /></div>

<p class="widget-title currency">Курсы валют</p>
{{php}}include ('/home/intexpre/xml-forest/intex-exchange.html');{{/php}}
<p class="widget-link"><a href="http://www.nbrb.by" target="_blank">Смотреть еще</a></p>
<div class="widgets-divider"><hr /></div>

{{list_articles constraints="section is 280"}}
{{if $gimme->current_list->at_beginning}}
<p class="widget-title other">Транспорт</p>
<p class="widget-item other-item">
{{/if}}
<a href="{{uri}}">{{$gimme->article->name}}</a><br />
{{if $gimme->current_list->at_end}}</p>{{/if}}
{{/list_articles}}
{{list_articles constraints="section is 290"}}
{{if $gimme->current_list->at_beginning}}
<p class="widget-title other">Афиша</p>
<p class="widget-item other-item">
{{/if}}
<a href="{{uri}}">{{$gimme->article->name}}</a><br />
{{if $gimme->current_list->at_end}}</p>{{/if}}
{{/list_articles}}
</div>

<div class="personals">
{{list_articles length="1" constraints="section is 220" ignore_issue="true"}}
<p class="topic" style="margin-bottom:10px;"><a href="{{uri}}">Частные объявления</a></p>
<a href="{{uri}}"><object data="http://www.intex-press.by/templates/images/Personal.swf" type="application/x-shockwave-flash" height="200" width="135"><param value="true" name="menu" /><param value="transparent" name="wmode" /></object></a>
{{/list_articles}}
<div class="personals-divider"><hr /></div>
</div>

</div>
