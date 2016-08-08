{{set_default_issue}}
<div class="middle-left">
  <div class="content-2">
    <div class="top-news-content">
      {{list_sections constraints="number smaller 141"}}
        {{list_articles length="1" constraints="OnFrontPage is on OnSection is on"}}
          {{if $gimme->article->has_image(2)}}
            <img src="{{uri options="image 2"}}" alt="{{$gimme->article->image2->description}}" width="340" />
          {{/if}}
          <h3 class="top-title-article"><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></h3>
          <p class="author"><a href="{{ uri options="template author-page.tpl" }}">{{$gimme->article->author->name}}{{$gimme->article->extended_author}}</a></p>
          <p>{{$gimme->article->Lead}}</p>
          <div class="more"><a href="{{uri options="article"}}">далее</a></div>
        {{ /list_articles }}
      {{ /list_sections }}
    </div><!-- /.top-news-content -->
  </div><!-- /.content-2 -->
</div><!-- /.middle-left -->
