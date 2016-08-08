{{list_articles length="4" constraints="type is article section is 240" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
<section>
{{/if}}
{{if $gimme->current_list->index==1}}
  <h3 class="block-title"><span><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></span></h3>
  {{if $gimme->article->author->picture->imageurl}}<img src="{{$gimme->article->author->picture->imageurl}}" width="45" height="45" alt="{{$gimme->article->author->name|escape:'html'}}" />{{/if}}
  <h4><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h4>
  <ul>
{{else}}
    <li><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></li>
{{/if}}
{{if $gimme->current_list->at_end}}
  </ul>
</section>
{{/if}}
{{/list_articles}}
