<div id="main-nav">

   <ul id="novosti">
      <li id="title"><a href="/">Галоўная</a></li>
{{ local }}
{{ unset_topic }}
{{ set_current_issue }}
{{ list_sections constraints="number smaller 100" }}
  <li><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></li>
{{ /list_sections }}
{{ /local }}
   <li><a href="/by/47/171/820/">Aб'явы</a></li>

   </ul><!-- /#novosti -->

   <ul id="novine">
      
{{ local }}
{{ unset_topic }}
{{ set_current_issue }}
{{ list_sections constraints="number greater_equal 100" }}
{{ if $gimme->section->number lt 161 }}
      <li><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></li>
{{ /if }}
{{ /list_sections }}
{{ /local }}
      
{{ local }}
{{ unset_topic }}
{{ set_issue number="1" }}
{{ list_articles length="1" constraints="section is 1" }}
      <li><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></li>
{{ /list_articles }}
{{ list_articles length="1" constraints="section is 2" }}
      <li><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></li>
{{ /list_articles }}
      <li><a href="{{ uripath options="issue"}}?{{urlparameters options="template archive.tpl" }}">АРХІЎ</a></li>
      <li><a href="{{ uripath options="issue"}}?{{urlparameters options="template rss.tpl" }}"><img alt="RSS button" src="/templates/images/rssbutt.gif" />RSS</a></li>
{{ list_articles length="1" constraints="section is 5" }}
      <li><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></li>
{{ /list_articles }}
{{ /local }}
   </ul><!-- /#novine -->

</div><!-- /#main-nav -->