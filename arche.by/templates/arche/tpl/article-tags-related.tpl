{{if $gimme->article->has_topics}}
<section class="tags">
  <dl>
    <dt>Тэмы:</dt>
    <dd>
{{list_article_topics}}{{assign var="topic_cond" value="`$topic_cond` topic is `$gimme->topic->identifier` "}}
      <a href="/{{$gimme->language->code}}/page/topic/?{{urlparameters}}">{{$gimme->topic->name}}</a>{{if !$gimme->current_list->at_end}}, {{/if}}
{{/list_article_topics}}
    </dd>
  </dl>
</section><!-- .tags -->

{{list_articles length="2" constraints="type is article number not `$gimme->article->number` `$topic_cond` matchAnyTopic" ignore_issue="true" ignore_section="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
<section class="related-articles">
  <header>
    <h3>Артыкулы па тэме:</h3>
  </header>
  <ul>
{{/if}}
    <li>
      <h4><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_photo}} <span class="attachments photo" title="Фота">Фота</span>{{/if}}{{if $gimme->article->has_video}} <span class="attachments video" title="Відэа">Відэа</span>{{/if}}</h4>
    </li>
{{if $gimme->current_list->at_end}}
  </ul>
</section><!-- .related-articles -->
{{/if}}
{{/list_articles}}
{{/if}}