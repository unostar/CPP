{{*<div class="block-pogoda">ПОГОДА</div>
<a href="http://weather.infobot.ru/forecast/belarus/minsk/borisov.html">
<img alt="Прогноз погоды в Борисове" src="http://informer.infobot.ru/weather/belarus.minsk.borisov.forecast.468x60.gif" 
width=468 height=60 border=0></a>
<br/>

<div class="block-pogoda">
<a href="/">
<img alt="Прогноз погоды в Борисове" src="http://informer.infobot.ru/weather/belarus.minsk.borisov.forecast.468x60.gif" 
width=400 height=60 border=0></a>
</div>
<script type="text/javascript" src="http://informer.hmn.ru/types/info.js?value=26759&type=1_3"></script>
*}}


<div class="block-title usa">Командировка в США</div>
<embed type="application/x-shockwave-flash" src="https://picasaweb.google.com/s/c/bin/slideshow.swf" width="288" height="192" flashvars="host=picasaweb.google.com&hl=ru&feat=flashalbum&RGB=0x000000&feed=https%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F104427684983227629834%2Falbumid%2F5666045828130313617%3Falt%3Drss%26kind%3Dphoto%26hl%3Dru" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>


<div class="block-title">ПОСЛЕДНИЕ НОВОСТИ</div>
<ul class="latest-news">
{{ set_section number="5" }}
  {{ list_articles length="3" ignore_section="false" ignore_issue="true" order="byPublishDate desc" }}
  <li>
    <p class="date">{{ $gimme->issue->publish_date|camp_date_format:"%e %M %Y" }}</p>
    <h3><a href="{{ uri options="article"}}">{{ $gimme->article->name }}</a></h3>
    <p>{{ $gimme->article->intro|strip_tags}}</p>
    <div class="readmore"><a href="{{ uripath options="article" }}#comments">Комментарии</a><span>|</span><a href="{{ uri options="article" }}">Читать дальше &rsaquo;&rsaquo;</a></div>
  </li>
  {{ /list_articles }}
</ul>
