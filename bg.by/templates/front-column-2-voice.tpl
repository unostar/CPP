{{ list_articles length="3" constraints="section is 140" ignore_issue="true" order="bypublishdate desc" }}
{{if $gimme->current_list->at_beginning}}
  <p class="title">Глас народа</p>
{{/if}}
  <p><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
{{if $gimme->current_list->at_end}}
  <p class="bullet"><a href="/templates/phpscripts/mail/send.php" class="email" target="email">Ваша новость</a></p>
  <p class="bullet"><a href="{{ uri options="section" }}">Читать еще</a></p>
{{/if}}
{{ /list_articles }}
