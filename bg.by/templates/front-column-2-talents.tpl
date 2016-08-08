{{list_articles length="1" constraints="section is 160" ignore_issue="true"}}
{{if $gimme->current_list->at_beginning}}
  <p class="title" style="line-height:normal">Фабрика <br/>талантов</p>
  <p><strong>Таланты!<br/> Это Ваш шанс!</strong></p>
  <p style="font-weight:normal;margin-right:1px;"><a href="/templates/phpscripts/mail/send.php" class="email" target="email">Пишите письма</a> и Ваши произведения - стихи и проза - появятся на нашем сайте.</p>
  <p><strong>Сегодня в рубрике:</strong></p>
{{/if}}
  <p style="font-weight:normal;">{{ $gimme->article->author->name }}</p>
  <p><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
{{if $gimme->current_list->at_end}}
  <p class="bullet"><a href="{{ uri options="section" }}">Читать еще</a></p>
{{/if}}
{{/list_articles}}
