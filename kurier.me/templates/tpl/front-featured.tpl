{{list_articles length="5" constraints="type is article onFrontPage is on" ignore_issue="true" ignore_section="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}<ul class="featured">{{/if}}
  <li{{if $gimme->current_list->at_beginning}} class="current"{{/if}}>
    <h2><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h2>
    <img src="{{uri options="image 1 width 564 height 290"}}" width="564" height="290" alt="{{$gimme->article->name|escape:'html'}}" />
  </li>
{{if $gimme->current_list->at_end}}</ul><!-- .featured -->{{/if}}
{{/list_articles}}
