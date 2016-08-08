<div class="block-title">Наиболее читаемые</div>
<ul class="most-items">
{{ list_articles length="5" ignore_section="true" order="byPopularity desc" }}
  <li><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a><p class="date">{{ $gimme->section->name }}, {{ $gimme->issue->publish_date|camp_date_format:"%d %M %Y" }}</p></li>
{{ /list_articles }}
</ul>
