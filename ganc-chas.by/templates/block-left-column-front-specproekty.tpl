  <div class="b-main">
    <span class="header-green">Спецпроекты издания “Ганцавіцкі час”</span>
    
{{set_issue number="1"}}
{{list_sections constraints="number greater_equal 100 number smaller_equal 120"}}
        <div class="b-articlesmall">
          <div class="header-category"><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></div>
{{list_articles length="1" constraints="type is article" ignore_issue="true" order="bypublishdate desc"}}
          <a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="header-article">{{$gimme->article->name}}</a>
          {{if $gimme->article->has_image(1)}}<span class="b-article_img"><a class="fancy" href="{{uri options="image 1"}}" title="{{$gimme->article->image1->description}}"><img src="{{uri options="image 1 38"}}" alt="{{$gimme->article->image1->description}}" width="190" /></a></span>{{/if}}
          <div class="intro">{{$gimme->article->intro}}{{if $gimme->article->comment_count}} <a href="{{uri options="article"}}#comments" class="link-article_name"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}</a>{{/if}}</div>
{{/list_articles}}
        </div>
{{/list_sections}}
{{set_default_issue}}
  </div>
