<section class="last-videos">
  <header>
    <h2>Апошняе відэа</h2>
    <a href="/{{$gimme->language->code}}/channel/all/" class="more">Усё відэа</a>
  </header>
  <ul class="videos">
{{list_articles length="44" constraints="type is video" ignore_section="true" ignore_issue="true" order="bypublishdate desc"}}
    <li>
      <div class="content">
        <h4 class="section-name"><a href="/{{$gimme->language->code}}/channel/{{$gimme->article->section->url_name}}/">{{$gimme->article->section->name}}</a></h4>
        <a href="/{{$gimme->language->code}}/channel/{{$gimme->article->section->url_name}}/{{$gimme->article->number}}" class="preview"><img src="{{uri options="image 1 width 130 height 95"}}" alt="{{$gimme->article->name|escape}}">{{if $gimme->article->length}}<span class="duration">{{$gimme->article->length}}</span>{{/if}}</a>
        <h3><a href="/{{$gimme->language->code}}/channel/{{$gimme->article->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>&nbsp;<small>({{$gimme->article->reads}})</small></h3>
        <ul class="video-info">
          <li><time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%dT%H:%i"}}">{{$gimme->article->publish_date|camp_date_format:"%H:%i %d/%m/%Y"}}</time></li>
          <li><a href="/{{$gimme->language->code}}/channel/{{$gimme->article->section->url_name}}/{{$gimme->article->number}}#disqus_thread" data-disqus-identifier="videoarche-{{$gimme->article->number}}" class="comments-count"></a></li>
        </ul><!-- .video-info -->
      </div><!-- .content -->
      <div class="tooltip">
        <ul class="video-info">
          <li><time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%dT%H:%i"}}">{{$gimme->article->publish_date|camp_date_format:"%H:%i %d/%m/%Y"}}</time></li>
          <li>з рубрыкі <a href="/{{$gimme->language->code}}/channel/{{$gimme->article->section->url_name}}/">{{$gimme->article->section->name}}</a></li>
          {{if $gimme->article->length}}<li>працягласць {{$gimme->article->length}}</li>{{/if}}
        </ul><!-- .video-info -->
        <h3><a href="/{{$gimme->language->code}}/channel/{{$gimme->article->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a> <small>({{$gimme->article->reads}} праглядаў)</small></h3>
        <p>{{$gimme->article->text|strip_tags:false|strip|truncate:100}} <a href="/{{$gimme->language->code}}/channel/{{$gimme->article->section->url_name}}/{{$gimme->article->number}}" class="more">глядзець >></a></p>
        {{list_article_topics}}{{if $gimme->current_list->at_beginning}}<p class="topics">тэмы: {{/if}}<a href="/{{$gimme->language->code}}/channel/topics/?topic={{$gimme->topic->name|escape}}">{{$gimme->topic->name}}</a>{{if !$gimme->current_list->at_end}}, {{/if}}{{if $gimme->current_list->at_end}}</p>{{/if}}{{/list_article_topics}}
      </div><!-- .tooltip -->
    </li>
{{/list_articles}}
  </ul><!-- .videos -->
  <p class="more"><a href="/{{$gimme->language->code}}/channel/all/">Глядзець яшчэ відэа >></a></p><!-- .more -->
</section><!-- .last-videos -->
