  <section class="section-home jokes">
    <header>
      <h2><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}} :))))</a></h2>
      <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/" class="read-more">Чытаць болей</a>
      <p>Гумар — гэта пачатак нацыянальнай свядомасці.</p>
    </header>
{{list_articles length="1" constraints="type is caricatura" ignore_issue="true" order="bypublishdate desc"}}
{{list_article_images length="1"}}
    <h3>{{$gimme->article->name}}</h3>
    <figure class="cartoon"><img src="{{$gimme->article->image->imageurl}}" width="300" alt="{{$gimme->article->name}}" /></figure>
{{/list_article_images}}
{{/list_articles}}
{{list_articles length="1" constraints="type is anekdot" ignore_issue="true" order="bypublishdate desc"}}
    <h3>{{$gimme->article->name}}</h3>
    <p>{{$gimme->article->text}}</p>
{{/list_articles}}
  </section><!-- .section-home jokes -->
