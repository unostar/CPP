{{list_articles length="10" order="bypublishdate desc" ignore_issue="true"}}
{{if $gimme->current_list->at_beginning}}
  <section class="section-home">
    <header>
      <h2><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></h2>
      <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/?type=rss" class="rss">RSS</a>
      <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/" class="read-more">Чытаць болей</a>
    </header>
    <ul class="monitoring">
{{/if}}
      <li><h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_photo}} <span class="attachments photo" title="Фота">Фота</span>{{/if}}{{if $gimme->article->has_video}} <span class="attachments video" title="Відэа">Відэа</span>{{/if}}</h3></li>
{{if $gimme->current_list->at_end}}
    </ul><!-- .monitoring -->
  </section><!-- .section-home -->
{{/if}}
{{/list_articles}}
