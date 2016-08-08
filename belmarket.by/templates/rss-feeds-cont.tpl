<div class="home-column-middle">
<div class="content-middle">
{{ set_current_issue }}
<h3 class="top-title-article">RSS лента он-лайн газеты &quot;Белорусы и Рынок&quot;</h3><br/>
<p class="title-article" style="clear:both;"><img src="/templates/images/RSS.gif" alt="rss" border="0" />&nbsp;&nbsp;<a href="http://{{$gimme->publication->site}}/feed/index.rss">Все статьи выпуска</a></p>
{{list_sections constraints="number smaller 240 number not 5 number not 6"}}
<p class="title-article" style="clear:both;width:auto;"><img src="/templates/images/RSS.gif" alt="rss" border="0" />&nbsp;&nbsp;<a href="http://{{$gimme->publication->site}}/feed/{{$gimme->section->number}}.rss">{{$gimme->section->name}}</a></p>
{{/list_sections}}
<br/><br/>
<div class="rss-feeds">
<p>RSS (Really Simple Syndication) – Интернет-технология, которая позволяет доставлять пользователю материалы сайта в специальном формате, на языке XML (Extensible Markup Language).</p><br/>
<p>Эта технология позволяет получать последние заголовки с сайта не заходя на него, в одной новостной ленте, как только они там появляются.</p><br/>
<p>Чтобы пользоваться RSS, нужно инсталлировать на свой компьютер либо одну из программ-“считывателей” (web grabber | rss feed reader | rss aggregator), либо новейшие версии Интернет-браузеров Mozilla Firefox и Opera, где функция подписки на RSS включена автоматически.</p><br/>
<p>Вот некоторые из бесплатных программ для чтения RSS:<br/>
Feedreader(www.feedreader.com)<br/>
Gregarius (devlog.gregarius.net)</p>
</div>
</div>
</div>