<div id="most">

<ul class="ui-tabs-nav">
  <li><a href="#most-inner-reads"><span>САМАЕ ЧЫТАНАЕ</span></a></li>
  <li><a href="#most-inner-comments"><span>АПОШНІЯ КАМЕНТАРЫ</span></a></li>
</ul>

<div id="most-inner-comments">
{{ list_articles length="5" ignore_issue="true" ignore_section="true" order="byLastComment desc" }}
   {{list_article_comments length="1" order="byDate desc"}}
   <div class="mostitem">
      <p class="mosttitle"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a><br/>{{$gimme->comment->content|truncate:200}}</p>
      <p class="pubplacetime"><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a> - {{ $gimme->article->town }}, {{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y." }}<span class="comcount-most">{{ $gimme->article->comment_count }}</span></p>
   </div>
   {{/list_article_comments}}
{{ /list_articles }}

</div><!-- /#most-inner-comments -->

</div><!-- /#most -->