<div class="rest-news">
<img src="/templates/images/bullet-rss.gif" alt="separator" style="width:15px;border:0;" /><h3 class="section-block"><a href="http://{{$gimme->publication->site}}/feed/index.rss">Все новости сайта</a></h3>
</div>
<div class="title">RSS новости по рубрикам:</div>
<div class="rest-news">
{{list_sections constraints="number greater 1 number smaller 100"}}
<img src="/templates/images/bullet-rss.gif" alt="separator" style="width:15px;border:0;" /><h3 class="section-block"><a href="http://{{$gimme->publication->site}}/feed/{{$gimme->section->url_name}}.rss">{{$gimme->section->name}}</a></h3><br />
{{/list_sections}}
</div>
