{{ list_articles length="1" constraints="section is 110" ignore_issue="true" order="bypublishdate desc" }}
<p class="title" style="line-height:normal;">Колонка<br />редактора</p>
<p><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
<div class="text">{{ $gimme->article->Intro }}</div>
<p class="bullet"><a href="/templates/phpscripts/mail/send.php" class="email" target="email">Пишите письма</a></p>
<p class="bullet"><a href="{{ uri options="section" }}">Читать еще</a></p>
<br />
{{ /list_articles }}
