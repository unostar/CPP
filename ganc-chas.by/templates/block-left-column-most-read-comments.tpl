{{assign var="xdate" value="-1 month"|date_format:"%Y-%m-%d"}}
<div class="b-main">
  <span class="header-green">Популярные материалы</span>
  <div class="header-diag">Самое читаемое</div> 
  <ul class="list-simplelinks">
{{list_articles length="10" order="bypopularity desc" constraints="type is article publish_date greater $xdate section smaller_equal 120 reads greater 0" ignore_issue="true"}}
    <li><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a> ({{$gimme->article->reads}})</li>
{{/list_articles}}
  </ul>
  <div class="header-diag">Последние комментарии</div>
  <ul class="list-simplelinks">
{{list_articles length="10" order="byLastComment desc" constraints="type is article section smaller_equal 120" ignore_issue="true"}}
    <li><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}/#comments">{{$gimme->article->name}}</a> <i class="ico ico-comments"></i> {{$gimme->article->comment_count}}</li>
{{/list_articles}}
  </ul>
</div>