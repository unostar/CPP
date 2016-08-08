<div class="article">

<h1 style="font-size:18px;">RSS новости &quot;Газета Слонімская&quot;</h1>

{{php}}$this->assign("sections",array(
  10 => 'slonim',
  20 => 'belarus',
  30 => 'world',
  40 => 'region',
  50 => 'sport',
  60 => 'reviews',
  80 => 'election',
  100 => 'relax',
  105 => 'rumors',
  110 => 'health',
  120 => 'kids',
  130 => 'sms',
  140 => 'history'
));
{{/php}}
{{set_current_issue}}
<p class="rss"><a href="http://{{$gimme->publication->site}}/feed/index.rss">RSS усiх артыкулаў сайта</a></p>
{{list_sections constraints="number greater 9 number smaller 141"}}
{{assign var="sect_num" value=$gimme->section->number}}
<p class="rss"><a href="http://{{$gimme->publication->site}}/feed/{{$sections.$sect_num}}.rss">{{$gimme->section->name}}</a></p>
{{/list_sections}}
{{set_default_issue}}

<p>RSS (Really Simple Syndication) – Интернет-технология, которая позволяет доставлять пользователю материалы сайта в специальном формате, на языке XML (Extensible Markup Language).</p>

<p>Эта технология позволяет получать последние заголовки с сайта не заходя на него, в одной новостной ленте, как только они там появляются.</p>

<p>Чтобы пользоваться RSS, нужно инсталлировать на свой компьютер либо одну из программ-“считывателей” (web grabber | rss feed reader | rss aggregator), либо новейшие версии Интернет-браузеров Mozilla Firefox и Opera, где функция подписки на RSS включена автоматически.</p>

<p>Вот некоторые из бесплатных программ для чтения RSS:
<br>
<a href="http://www.feedreader.com" target="_blank">Feedreader(www.feedreader.com)</a>
<br>
<a href="http://devlog.gregarius.net" target="_blank">Gregarius (devlog.gregarius.net)</a>
</p>
</div>