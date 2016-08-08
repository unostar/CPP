{{list_articles length="4" constraints="type is article section is 510" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
<section class="opinions">
  <h3 class="block-title"><span><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></span></h3>
  <ul>
{{/if}}
    <li>
      <img src="{{$gimme->article->author->picture->imageurl}}" width="45" height="45" alt="{{$gimme->article->author->name|escape:'html'}}" />
      <h4><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h4>
      <a href="/{{$gimme->language->code}}/page/author/?name={{$gimme->article->author->name|escape:'url':'utf-8'}}" class="author">{{$gimme->article->author->name}}</a>
    </li>
{{if $gimme->current_list->at_end}}
  </ul>
</section><!-- .opinions -->
{{/if}}
{{/list_articles}}
