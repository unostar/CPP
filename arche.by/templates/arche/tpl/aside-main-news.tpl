<section class="main-news">

  <h2>Галоўныя навіны:</h2>
  <ul class="articles-list">
{{list_articles length="3" constraints="type is article OnFrontPage is on OnSection is on section greater 20 section smaller 80" ignore_issue="true" order="bypublishdate desc"}}
    <li>
      <figure class="image"><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"><img src="{{uri options="image 1 width 68 height 50"}}" width="68" height="50" alt="{{$gimme->article->name|escape:"html"}}" /></a></figure>

      <h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}} <span class="more">&gt;&gt;</span></a>{{if $gimme->article->has_photo}} <span class="attachments photo" title="Фота">Фота</span>{{/if}}{{if $gimme->article->has_video}} <span class="attachments video" title="Відэа">Відэа</span>{{/if}}</h3>

      <footer class="article-footer">
        <time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%dT%H:%i"}}">{{$gimme->article->publish_date|camp_date_format:"%H:%i %d/%m/%Y"}}</time>
        <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}#disqus_thread" data-disqus-identifier="archeby-{{$gimme->article->number}}" class="comments-count"></a>
      </footer><!-- .article-footer -->
    </li>
{{/list_articles}}
  </ul><!-- .articles-list -->

  <h2>Важнае:</h2>
  <ul class="articles-list">
{{list_articles length="5" constraints="type is article OnFrontPage is off OnSection is on section greater 20 section smaller 200" order="bypublishdate desc" ignore_issue="true"}}
    <li><h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name|truncate}} <span class="more">&gt;&gt;</span></a></h3></li>
{{/list_articles}}
  </ul><!-- .articles-list -->

</section><!-- .main-news -->
