<div class="block-title">Наиболее комментируемые</div>
<ul class="most-items">
  {{ list_articles length="5" ignore_section="true" ignore_issue="true" order="byComments desc" }}
  {{ if $gimme->article->comment_count > 0 }}
  <li>
    <a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>
    <p class="date">{{ $gimme->section->name }}, {{ $gimme->issue->publish_date|camp_date_format:"%d %M %Y" }}</p>
    <p class="date comments">Комментарии ({{$gimme->article->comment_count}})</p>
  </li>
  {{ /if }}
  {{ /list_articles }}
</ul>
