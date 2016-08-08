{{list_articles length="1" constraints="type is article section is 320" ignore_issue="true" order="bypublishdate desc"}}
{{list_article_images length="1"}}
  <section class="caricature">
    <h3 class="block-title"><span><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{if $gimme->language->code=="ru"}}Карикатура{{else}}Caricature{{/if}}</a></span></h3>
    <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"><img src="{{uri options="image width 210"}}" width="210" alt="{{$gimme->article->name|escape:'html'}}" /></a>
  </section><!-- .caricature -->
{{/list_article_images}}
  <section class="joke">
    <h3 class="block-title"><span><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></span></h3>
    <p>{{$gimme->article->intro}}</p>
  </section><!-- .joke -->
{{/list_articles}}
