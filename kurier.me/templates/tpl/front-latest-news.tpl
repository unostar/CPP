{{list_articles length="4" constraints="type is article section greater 1 section smaller 100" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
<section class="last-news">
  <h3 class="block-title"><span>{{if $gimme->language->code=="ru"}}Последние новости{{else}}Latest News{{/if}}</span></h3>
{{assign var="latest_date" value=$smarty.now|date_format:"%Y-%m-%d"}}
  <p class="date"><time datetime="{{$smarty.now|date_format:"%Y-%m-%d"}}">{{$smarty.now|date_format:"%d.%m.%Y"}}</time></p>
  <ul>
{{/if}}
    <li>
      <h2><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h2>
      <p>{{$gimme->article->intro|strip_tags:false|strip|truncate:280}}</p>
      <p class="time"><time datetime="{{$gimme->article->publish_date|date_format:"%Y-%m-%dT%H:%M+03:00"}}">{{if $gimme->article->publish_date|date_format:"%Y-%m-%d" != $latest_date}}{{$gimme->article->publish_date|date_format:"%d.%m.%Y"}} {{/if}}{{$gimme->article->publish_date|date_format:"%H:%M"}}</time></p>
    </li>
{{if $gimme->current_list->at_end}}
  </ul>
</section><!-- .last-news -->
{{/if}}
{{/list_articles}}
