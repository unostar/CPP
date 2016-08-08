  <div class="b-main">
    <div id="main-news-slideshow" class="b-artmainsmall">
{{list_articles length="4" constraints="section is 10 type is article" ignore_issue="true" order="bypublishdate desc"}}
      <div{{if !$gimme->current_list->at_beginning}} style="display:none"{{/if}}>
        {{if $gimme->article->has_image(1)}}<span class="b-article_img"><a class="fancy" href="{{uri options="image 1"}}" title="{{$gimme->article->image1->description}}"><img src="{{uri options="image 1 50"}}" alt="{{$gimme->article->image1->description}}" width="250" /></a></span>{{/if}}
        <a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="header-article">{{$gimme->article->name}}</a>
        <div class="b-article_name">{{if $gimme->article->author->name}}{{$gimme->article->author->name}}{{else}}Ганцавіцкі час{{/if}}{{if $gimme->article->comment_count}} <a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}/#comments"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}</a>{{/if}}</div>
        <div class="intro">{{$gimme->article->intro}}</div>
        <div class="g-clean"><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="b-article_readfw">читать далее</a></div>
      </div>
{{/list_articles}}
    </div>
    
    <div class="b-newslenta">
      <span id="main-news-nav" class="b-newslenta_images bg-diag g-clean">
{{list_articles length="4" constraints="section is 10 type is article" ignore_issue="true" order="bypublishdate desc"}}
        <span><img src="{{uri options="image 1 30"}}" alt="{{$gimme->article->image1->description}}" width="150" /></span>
{{/list_articles}}
      </span>
    </div>
    <div class="b-newslenta_descr g-clean">
{{list_articles length="4" constraints="section is 10 type is article" ignore_issue="true" order="bypublishdate desc"}}
      <dl>
        {{* <dt>{{$gimme->article->section->name}}</dt> *}}
        <dd><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></dd>
      </dl>
{{/list_articles}}
    </div>
  </div>
  <div class="b-main front-banner">{{include file="_banner-front-center-column.tpl"}}</div>
