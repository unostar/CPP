{{unset_topic}}

<div class="tabs">
  <ul class="tabs-captions">
    <li class="current">НАЙБОЛЬШ ЧЫТАНАЕ</li>
    <li>КАМЕНТАРЫ</li>
  </ul>

  {{ set_current_issue }}
  <ul class="lists tabs-lists visible">
  {{list_articles length="6" constraints="type is Article section greater 19 section smaller 99 issue greater `$gimme->issue->number-7`" order="bypopularity desc" }}
    <li><a href="{{uri options="article"}}">{{$gimme->article->name}} ({{$gimme->article->reads}})</a></li>
  {{/list_articles}}
  </ul>

  <ul class="lists tabs-lists">
  {{list_articles length="6" order="byLastComment desc" ignore_issue="true" ignore_section="true"}}
    <li><a href="{{uri options="article"}}">{{$gimme->article->name}} ({{$gimme->article->comment_count}})</a></li>
  {{/list_articles}}
  </ul>
</div><!-- .tabs -->
{{ set_default_issue }}

<h4>Погляд</h4>
<div class="blog">
{{set_section number="70"}}{{set_topic name="Погляд:by" }}{{list_subtopics order="byNumber desc" }}
{{list_articles length="1" order="bypublishdate desc" ignore_issue="true"}}
<p class="blog-name"><a href="{{uripath options="section"}}?tpid={{$gimme->topic->identifier}}">{{$gimme->topic->name}}:</a></p>
{{local}}{{set_issue number="1"}}{{set_section number="130"}}{{list_articles length="1"}}
<img src="{{uri options="image 1"}}" border="0" alt="{{$gimme->article->image1->description}}" />
{{/list_articles}}{{/local}}
<p class="blog-article"><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></p>
{{/list_articles}}{{/list_subtopics}}{{unset_topic}}{{set_default_section}}
</div>

<h4>свежы нумар</h4>
<div class="blog">
{{set_section number="110"}}
{{list_articles length="1" ignore_issue="true" constraints="type is pdf" order="byPublishDate desc"}}
<a rel="lightbox" class="issue-pic" href="{{uri options="image 1"}}" title="{{$gimme->article->image1->description}}"><img src="{{uri options="image 1"}}&ImageRatio=50" alt="{{$gimme->article->image1->description}}" /></a>
{{list_article_attachments length="1"}}
<a class="readmore" title="{{$gimme->attachment->description}}" href="{{uri options="articleAttachment"}}" >Спампаваць свежы нумар</a>
{{/list_article_attachments}}
{{/list_articles}}
<a class="readmore" href="/by/page/pdf">Архіў PDF версій нумароў</a>
</div>
{{set_default_section}}
<div class="pdf">
<a href="http://get.adobe.com/reader/otherversions/" target="_blank" title="Спампаваць апошнюю версію Adobe PDF Reader"><img src="/templates/img/adobe-reader.gif" alt="Adobe PDF Reader" /></a>
<p>Для чытання газеты ў фармаце <br />
pdf Вам  спатрэбіцца “PDF reader”</p>
</div>

<h4 class="mb26">З сайта па нітцы</h4>
<ul class="lists">
{{ php }}
include ('/var/www/xml-forest/svaboda-feed-express.html');
{{ /php }}
</ul>

<h4>АРХIў САЙТА</h4>
<script type="text/javascript">
var link = 'http://{{$gimme->publication->site}}{{uri options="publication"}}';
var dates = new Array({{ list_issues order="byDate desc" constraints="number greater 1" }}
['{{$gimme->issue->number}}','{{$gimme->issue->date|camp_date_format:"%d.%m.%Y"}}',"{{$gimme->issue->name|strip|replace:'"':''}}"]{{if !$gimme->current_list->at_end}},{{/if}}
{{ /list_issues }});
</script>
<div id="IssueCalendar"></div>

{{include file="poll.tpl"}}

{{include file="banner-right-digest.tpl"}}

<h5>СПАСЫЛКI</h5>
<div class="links">
{{set_issue number="1"}}
{{set_section number="120"}}
{{list_articles constraints="type is links" order="bySectionOrder asc"}}
<a class="readmore" href="{{$gimme->article->link}}">{{$gimme->article->name}}</a>
{{/list_articles}}
{{set_default_issue}}
{{set_default_section}}
</div>