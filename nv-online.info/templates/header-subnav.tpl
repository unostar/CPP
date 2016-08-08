<div id="header-subnav">

{{ include file="search-box.tpl" }}

<a href="http://vkontakte.ru/club31665427" class="social vkontakte">Вконтакте</a>
<a href="http://www.facebook.com/nv.online.info" class="social facebook">Facebook</a>
<a href="http://twitter.com/narodnaya_volya" class="social twitter">Twitter</a>

<a href="{{ uri options="template archive.tpl" }}">АРХІЎ</a>

{{ dynamic }}
{{ set_current_issue }}
{{ set_section number="310" }}
{{ list_articles length="1" }}
   {{ list_article_attachments }}
   <a href="{{ uri options="articleattachment" }}">PDF</a>
   {{ /list_article_attachments }}
{{ /list_articles }}
{{ /dynamic }}

{{ set_issue number="1" }}
{{ set_section number="230" }}{{ list_articles length="1" }}<a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{ /list_articles }}
{{ set_section number="250" }}{{ list_articles length="1" }}<a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{ /list_articles }}
<a href="http://{{$gimme->publication->site}}/feed/index.rss">RSS</a>
{{set_default_issue}} 
{{set_default_section}}

</div>