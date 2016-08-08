{{list_articles length="2" constraints="type is article exclusive is on section greater 1 section smaller 400" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
  <section class="exclusive">
    <h3 class="block-title"><span>{{if $gimme->language->code=="ru"}}Эксклюзив{{else}}Exclusive{{/if}}</span></h3>
    <ul>
{{/if}}
      <li>
        <h2><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h2>
        <time datetime="{{$gimme->article->publish_date|date_format:"%Y-%m-%d"}}">{{$gimme->article->publish_date|date_format:"%d.%m.%Y"}}</time>
      </li>
{{if $gimme->current_list->at_end}}
    </ul>
  </section><!-- .exclusive -->
{{/if}}
{{/list_articles}}