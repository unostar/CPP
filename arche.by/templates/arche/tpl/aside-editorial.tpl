{{list_articles length="1" constraints="type is article section is 120" ignore_issue="true" order="bypublishdate desc"}}
<section class="from-editors">
  <header>
    <h2><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name|replace:" ":"<br />"}}</a></h2>
    <h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h3>
  </header>
  <p>{{$gimme->article->intro}} <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="more">далей &gt;&gt;</a></p>
</section><!-- .from-editors -->
{{/list_articles}}
