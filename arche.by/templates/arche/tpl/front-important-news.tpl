{{list_articles length="5" constraints="type is article OnFrontPage is off OnSection is on section greater 20 section smaller 200" order="bypublishdate desc" ignore_issue="true"}}
{{if $gimme->current_list->at_beginning}}
<section class="section-home important-news">
  <header>
    <h2>Важнае</h2>
  </header>
  <ul>
{{/if}}
    <li>
      <figure><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"><img src="{{uri options="image 1"}}" alt="{{$gimme->article->name|escape:"html"}}" /></a></figure>
      <h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name|truncate}}</a>{{if $gimme->article->has_photo}} <span class="attachments photo" title="Фота">Фота</span>{{/if}}{{if $gimme->article->has_video}} <span class="attachments video" title="Відэа">Відэа</span>{{/if}}</h3>
    </li>
{{if $gimme->current_list->at_end}}
  </ul>
</section><!-- .section-home important-news -->
{{/if}}
{{/list_articles}}
