<div class="sup-menu">
{{*<a class="mobile-version" href="">Мобильная версия</a>*}}
<a class="email" href="/templates/phpscripts/mail/send.php">Пишите письма</a>
{{ list_sections constraints="number greater 499 number smaller 531" }}
<a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a>
{{ /list_sections }}
{{ list_sections constraints="number greater 401 number smaller 451" }}
{{ list_articles length="1" ignore_issue="true" order="bypublishdate desc" }}
 <a href="{{ uri options="article" }}">{{ $gimme->section->name }}</a>
{{ /list_articles }}
{{ /list_sections }}
</div>