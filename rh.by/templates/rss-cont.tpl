<div id="leftbar">
<div class="story">
<h1>RSS стужка навiн</h1>

{{ include file="article-cont-tools.tpl" }}

<p><strong>Артыкулы па рубрыкам:</strong></p>

<ul>
{{local}}
{{php}}
$this->assign("sections",array(
  10 => 'events',
  20 => 'culture',
  30 => 'bazar',
  40 => 'accident',
  50 => 'society',
  60 => 'sports',
  100 => 'feedback',
  110 => 'youth',
  120 => 'history',
  130 => 'ecology',
  140 => 'health',
  150 => 'kaleidoscope'
));
{{/php}}
{{set_current_issue}}
{{list_sections constraints="number smaller 160"}}
{{assign var="sect_num" value=$gimme->section->number}}
<li><a href="http://{{$gimme->publication->site}}/feed/{{$sections.$sect_num}}.rss">{{$gimme->section->name}}</a></li>
{{/list_sections}}
{{/local}}
</ul>
<a href="http://{{$gimme->publication->site}}/feed/index.rss">RSS усiх артыкулаў сайта</a><br/><br/>

<p>RSS (Really Simple Syndication) – Інтэрнэт-тэхналёгія, што дазваляе дастаўляць карыстальніку матэрыялы сайту ў спэцыяльным фармаце, на мове XML (Extensible Markup Language).</p>

<p>Гэтая тэхналёгія дазваляе атрымліваць апошнія загалоўкі з сайту не заходзячы на яго, у адной навінавай стужцы, як толькі яны там зьяўляюцца.</p>

<p>Каб карыстацца RSS, трэба інсталяваць на свой кампутар або адну з спэцыяльных праграм- (web grabber | rss feed reader | rss aggregator), або найноўшыя вэрсіі Інтэрнэт-браўзэраў Mozilla Firefox і Opera, дзе функцыя падпіскі на RSS уключана аўтаматычна.</p>

Во некаторыя зь бясплатных праграм для чытаньня RSS:
<a href="www.feedreader.com">Feedreader(www.feedreader.com)</a><br/>
<a href="www.devlog.gregarius.net">Gregarius (devlog.gregarius.net)</a>
</div><!-- /.story -->
</div><!-- /#leftbar -->