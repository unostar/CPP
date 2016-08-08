<section class="tabs top-articles">
  <ul class="tabs-labels">
    <li class="active"><h2><a><span>Абмеркаваньні</span></a></h2></li>
    <li><h2><a><span>Самае чытанае</span></a></h2></li>
  </ul><!-- .tabs-labels -->
{{assign var="xdate" value="-2 weeks"|date_format:"%Y-%m-%d"}}

  <div class="tab tab-visible">
{{*
    <ul class="articles-list">
{{list_articles length="10" constraints="type is article publish_date greater $xdate" ignore_issue="true" ignore_section="true" order="byComments desc"}}
      <li>
        <h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h3>
        <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}#disqus_thread" data-disqus-identifier="archeby-{{$gimme->article->number}}" class="comments-count"></a>
      </li>
{{/list_articles}}
    </ul><!-- .articles-list -->
*}}
    <div id="recentcomments" class="dsq-widget"><script type="text/javascript" src="http://archeby.disqus.com/recent_comments_widget.js?num_items=5&hide_avatars=1&avatar_size=32&excerpt_length=200"></script></div>
  </div><!-- .tab -->

  <div class="tab">
    <ul class="articles-list">
{{list_articles length="10" constraints="type is article publish_date greater $xdate" ignore_issue="true" ignore_section="true" order="byPopularity desc"}}
      <li>
        <h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}} ({{$gimme->article->reads}})</a></h3>
      </li>
{{/list_articles}}
    </ul><!-- .articles-list -->
  </div><!-- .tab -->
</section><!-- .tabs top-articles -->
