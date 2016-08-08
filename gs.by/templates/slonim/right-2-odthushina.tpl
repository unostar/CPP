{{ list_articles length="1" order="bypublishdate desc" constraints="section is 100 type not Issue_PDF"}}
<p class="title-2">{{$gimme->section->name}}</p>
<a class="fancy" href="{{uri options="image 2"}}"><img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" border="0" /></a>
<p class="issue-link"><a class="fancy" href="{{uri options="image 2"}}">Увеличить изображение</a></p>
{{ /list_articles }}
{{ list_articles length="1" order="bypublishdate desc" constraints="section is 100 type is Issue_PDF"}}
{{ list_article_attachments }}
<p class="issue-link"><a href="{{ uri options="articleattachment" }}"}}">PDF номер</a></p>
{{ /list_article_attachments }}
{{ /list_articles }}
<p class="issue-link"><a href="{{ uri options="template slonim/issue-contents-otdusina.tpl"}}">Содержание</a></p>
<p class="issue-link"><a href="{{ uri options="template slonim/archive-otdusina.tpl" }}">Посмотреть прошлые номера</a></p>
