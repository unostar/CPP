<div class="b-maincontent">
<h2 class="header-block m-header-block-lightblue"><b class="bg-header-block-l"></b><b class="bg-header-block-r"></b><span class="header-block-i">Карысна</span></h2>
<div class="b-maincontent-il"><div class="b-maincontent-ir"><div class="b-maincontent-i">

<!-- Тело -->
<div class="c-newsmain-3cols g-tjustify m-nobg m-newsmain-3cols-pr">

<div class="c-newsmain-col1 g-dbjustify">
{{list_articles constraints="issue is 1 section is 920 type is link"}}
{{if $gimme->current_list->at_beginning}}
<h3 class="header-arrow">Афіша</h3>
<dl class="list-title">
{{if $gimme->section->description != ""}}<dt>{{$gimme->section->description}}</dt>{{/if}}
{{/if}}
<dd><a href="http://{{ $gimme->article->link }}">{{$gimme->article->name}}</a></dd>
{{if $gimme->current_list->at_end}}</dl>{{/if}}
{{/list_articles}}
{{list_articles constraints="issue is 1 section is 930 type is page"}}
{{if $gimme->current_list->at_beginning}}
<h3 class="header-arrow">Даведка</h3>
<dl class="list-title">
{{if $gimme->section->description != ""}}<dt>{{$gimme->section->description}}</dt>{{/if}}
{{/if}}
<dd><h4><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h4></dd>
{{if $gimme->current_list->at_end}}</dl>{{/if}}
{{/list_articles}}
</div>

<div class="c-newsmain-col2 g-dbjustify">
<h3 class="header-arrow">Надвор’е<a href="http://www.pogoda.by/26863" target="_blank"><!-- --></a></h3>
<table id="_in" cellpadding="2" cellspacing="2"><caption></caption><tr><td><script type="text/javascript" charset="windows-1251" src="http://pogoda.by/meteoinformer/js/26863_1.js"></script></td></tr><tr><td colspan="4"><br />Информация сайта <a href="http://www.pogoda.by/26863" target="_blank">pogoda.by</a></td></tr></table>
<h3 class="header-arrow">Курсы валют<a href="http://nbrb.by/statistics/rates/RatesDaily.asp" target="_blank"></a></h3>
<div id="nbrb"></div>
</div>

<div class="c-newsmain-col3 g-dbjustify">
<h3 class="header-arrow">Гараскоп<a class="left horo-prev" href="#"><!-- --></a><a class="horo-next" href="#"><!-- --></a></h3>
<div class="c-horoscope">{{include file="horoscope.tpl"}}</div>

</div>
<span class="g-tjustfix"></span>
</div>
<!-- //тело -->

</div></div></div>
<span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div>
