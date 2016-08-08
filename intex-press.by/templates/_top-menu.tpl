<div class="topmenu"> 
{{list_sections constraints="number greater 299 number smaller 311"}}
<a href="{{uri options="section"}}">{{$gimme->section->name}}</a>|
{{/list_sections}}
<a href="{{uripath options="publication"}}?{{urlparameters options="template archive.tpl"}}">Архив</a>|<a href="{{uripath options="publication"}}?{{urlparameters options="template archive-pdf.tpl"}}">PDF Архив</a>|<a href="{{uripath options="publication"}}?{{urlparameters options="template rss-feeds.tpl" }}" class="rss">RSS Feed</a>|
{{list_sections constraints="number greater 329 number smaller 331"}}
<a href="{{uri options="section"}}">{{$gimme->section->name}}</a>
{{/list_sections}}
|<a href="http://m.intex-press.by/" class="mobile">PDA</a>
<!--[if IE]>
|<a href="#" onclick="this.style.behavior='url(#default#homepage)';
this.setHomePage('http://intex-press.com/');">Сделать стартовой !</a>
<![endif]-->
</div>
