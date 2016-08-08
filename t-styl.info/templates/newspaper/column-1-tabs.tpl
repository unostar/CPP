<div id="paginate-tabs">
  <ul id="paginate-tabs-menu">
    <li class="current"><span>САМАЕ ЧЫТАНАЕ</span></li>
    <li><span>АПОШНІЯ КАМЕНТАРЫ</span></li>
  </ul><!-- #paginate-tabs-menu -->

  <div class="contentdiv visible">{{assign var="mostreaddate" value="-10 days"|date_format:"%Y-%m-%d"}}
    <ul>
      {{list_articles length="7" order="byPopularity desc" constraints="type is article publish_date greater $mostreaddate reads greater 0" ignore_issue="true" ignore_section="true" }}
      <li><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></li>
      {{ /list_articles }}
    </ul>
  </div>

  <div class="contentdiv">
    <ul>
      {{ list_articles length="7" ignore_issue="true" ignore_section="true" order="byLastComment desc" }}
      <li><a href="{{ uri options="article" }}#add_comment">{{$gimme->article->name}}</a></li>
      {{ /list_articles }}
    </ul>
  </div>
</div><!-- #paginate-tabs -->