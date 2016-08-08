{{assign var="today" value=$smarty.now|date_format:"%Y-%m-%d"}}
{{list_articles constraints="section is 200 publish_date is $today" length="1" order="bypublishdate desc"}}
<br /><p class="title">Даты</p>
<p class="dates"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
<div class="dates-text">{{ $gimme->article->Intro }}</div>
{{ /list_articles }}
