{{list_articles length="1" constraints="type is article section is 220" ignore_issue="true" order="bypublishdate desc"}}
<section>
  <h3 class="block-title"><span><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></span></h3>
  {{if $gimme->article->author->picture->imageurl}}<img src="{{$gimme->article->author->picture->imageurl}}" width="45" height="45" alt="{{$gimme->article->author->name|escape:'html'}}" />{{/if}}
  <h4><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h4>
  <p><img src="{{uri options="image 1 width 210"}}" width="210" alt="{{$gimme->article->name|escape:'html'}}" /></p>
</section>
{{/list_articles}}
