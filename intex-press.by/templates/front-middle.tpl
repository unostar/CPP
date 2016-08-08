<div class="home-column-2">
<!-- begin printed issue picture -->
{{list_articles length="1" constraints="section is 5"}}
<div class="title-page">
  <div class="border-div"><a href="{{uri options="image 1"}}" class="cover"><img src="{{uri options="image 1 width 278"}}" width="278" /></a></div>
  <div class="links">
  <p class="issue">Печатный номер <strong>№ {{$gimme->issue->number}}</strong></p>
  <p><a href="{{uripath options="issue"}}?{{urlparameters options="template issue-contents.tpl"}}">Содержание</a> | <a href="{{uripath options="issue"}}?{{urlparameters options="template subscribe.tpl"}}">Подписка</a></p>
  <p><a href="{{uri options="image 1"}}" target="_blank" class="cover">Увеличить изображение</a></p>
  {{list_article_attachments}}{{if $gimme->attachment->extension == "pdf"}}<p><a href="{{uri options="articleattachment"}}">PDF версия</a></p>{{/if}}{{/list_article_attachments}}
{{/list_articles}}
{{list_articles length="1" constraints="issue is `$gimme->issue->number-1`"}}
  <p><a href="{{uripath options="issue"}}?{{urlparameters options="template issue-contents.tpl"}}">Предыдущий номер</a></p>
  <p><a href="{{uripath options="publication"}}?{{urlparameters options="template archive.tpl"}}">Посмотреть все прошлые номера</a></p>
{{/list_articles}}
  </div>
</div>
<!-- end printed issue picture -->
<!-- begin listing of printed issue -->
{{ include file="front-middle-news.tpl" }}
<!-- end listing of printed issue -->
</div>
