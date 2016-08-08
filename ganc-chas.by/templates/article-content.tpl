<div class="b-main b-article">
    <h1 class="header-article">{{$gimme->article->name}}</h1>
    <div class="b-article_name">{{if $gimme->article->author->name}}{{$gimme->article->author->name}}{{else}}Ганцавіцкі час{{/if}}{{if $gimme->article->comment_count}} <a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}/#comments"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}</a>{{/if}}</div>
    <div class="g-clean b-article_pre">
      {{if $gimme->article->has_image(1)}}<span class="b-article_img"><a class="fancy" href="{{uri options="image 1"}}" title="{{$gimme->article->image1->description}}"><img src="{{uri options="image 1 50"}}" alt="{{$gimme->article->image1->description}}" width="250" /></a></span>{{/if}}
      {{$gimme->article->intro}}
    </div>
    <div class="b-article_body">{{$gimme->article->full_text}}</div>

  <!-- AddThis Button BEGIN -->
  <div class="addthis_toolbox addthis_default_style ">
    <a rel="nofollow" href="http://www.addthis.com/bookmark.php?v=250&amp;pubid=xa-4e19c3c82927fb02" class="addthis_button_compact">Поделиться</a>
    <span class="addthis_separator">|</span>
    <a class="addthis_button_twitter"></a>
    <a class="addthis_button_facebook"></a>
    <a class="addthis_button_vk"></a>
  </div>
  <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4e19c3c82927fb02"></script>
  <!-- AddThis Button END -->
</div>
