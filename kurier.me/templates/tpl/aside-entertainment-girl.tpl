{{list_articles length="1" constraints="type is article section is 340" ignore_issue="true" order="bypublishdate desc"}}
  <section class="girl-of-the-week">
    <h3 class="block-title"><span><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></span></h3>
    <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"><img src="{{uri options="image 1 width 210"}}" width="210" alt="{{$gimme->article->name|escape:'html'}}" /></a>
    <h4><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h4>
    <p>{{$gimme->article->intro|strip_tags:false|strip}}</p>
{{list_article_attachments length="1"}}
    <a class="flowplayer" id="lady_of_the_week" href="http://{{$gimme->publication->site}}/attachment/{{$gimme->attachment->identifier}}/{{$gimme->attachment->file_name|escape:'url'}}" data-link="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" data-name="{{$gimme->article->name|escape:'html'}}"></a>
{{/list_article_attachments}}
  </section><!-- .girl-of-the-week -->
{{/list_articles}}
