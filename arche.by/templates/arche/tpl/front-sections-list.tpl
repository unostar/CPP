{{list_articles length="5" constraints="type is article OnFrontPage is off OnSection is off" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
  <section class="section-home">
    <header>
      <h2><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></h2>
      <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/?type=rss" class="rss">RSS</a>
      <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/" class="read-more">Чытаць болей</a>
    </header>
{{/if}}
{{if $gimme->current_list->index == 1}}
    <article class="last-article">
      <header class="article-header">
        <h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name|truncate:110}}</a></h3>
        <img src="{{uri options="image 2 width 325 height 244"}}" width="325" height="244" alt="{{$gimme->article->name|escape:'html'}}" />
      </header><!-- .article-header -->
      <p>{{$gimme->article->intro|strip_tags:false|strip|truncate:280}}</p>
      <footer class="article-footer">
        <ul>
          <li><time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%dT%H:%i"}}">{{$gimme->article->publish_date|camp_date_format:"%H:%i %d/%m/%Y"}}</time></li>
          {{if $gimme->article->author->name!=""}}<li><a href="/{{$gimme->language->code}}/page/author/?name={{$gimme->article->author->name|escape:'url'}}" class="author">{{$gimme->article->author->name}}</a></li>{{/if}}
          <li><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}#disqus_thread" data-disqus-identifier="archeby-{{$gimme->article->number}}" class="comments-count"></a></li>
          {{if $gimme->article->has_photo || $gimme->article->has_video}}<li>{{if $gimme->article->has_photo}}<span class="attachments photo" title="Фота">Фота</span>{{/if}}{{if $gimme->article->has_video}} <span class="attachments video" title="Відэа">Відэа</span>{{/if}}</li>{{/if}}
        </ul>
      </footer><!-- .article-footer -->
    </article><!-- .last-article -->
{{else}}
    <article class="short-article">
      <figure class="image"><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}"><img src="{{uri options="image 1 width 90 height 66"}}" width="90" height="66" alt="{{$gimme->article->name|escape:'html'}}" /></a></figure>
      <h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_photo}} <span class="attachments photo" title="Фота">Фота</span>{{/if}}{{if $gimme->article->has_video}} <span class="attachments video" title="Відэа">Відэа</span>{{/if}}</h3>
      <footer class="article-footer">
        <time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}">{{$gimme->article->publish_date|camp_date_format:"%d/%m/%Y"}}</time>
        <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}#disqus_thread" data-disqus-identifier="archeby-{{$gimme->article->number}}" class="comments-count"></a>
      </footer><!-- .article-footer -->
    </article><!-- .short-article -->
{{/if}}
{{if $gimme->current_list->at_end}}
  </section><!-- .section-home -->
{{/if}}
{{/list_articles}}
