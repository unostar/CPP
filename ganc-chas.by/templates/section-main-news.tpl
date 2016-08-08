<div class="l-content-wrapper">
<div class="b-main header-huge">
  Рубрика “{{$gimme->section->name}}”
  <a href="/feed/{{$gimme->section->url_name}}.rss" class="header-huge_link"><i class="ico ico-rss"></i> RSS новостей из рубрики</a>
</div>

{{* чтобы на странице каталога товаров и услуг первая статья не показывалась выделенно *}}
{{ if $gimme->section->url_name != "catalog"}}
<div class="b-main">
  <div class="b-artmainsmall">
{{list_articles length="1" ignore_issue="true" constraints="type is article"}}
    {{if $gimme->article->has_image(1)}}<span class="b-article_img"><a class="fancy" href="{{uri options="image 1"}}" title="{{$gimme->article->image1->description}}"><img src="{{uri options="image 1 50"}}" alt="{{$gimme->article->image1->description}}" width="250" /></a></span>{{/if}}
    <a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="header-article">{{$gimme->article->name}}</a>
    <div class="b-article_name">{{if $gimme->article->author->name}}{{$gimme->article->author->name}}{{else}}Ганцавіцкі час{{/if}}{{if $gimme->article->comment_count}} <a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}/#comments"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}</a>{{/if}}</div>
    <div class="intro">{{$gimme->article->intro}}</div>
    <div class="g-clean"><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}" class="b-article_readfw">читать далее</a></div>
{{/list_articles}}
  </div>
</div>
{{ /if }}


</div>
