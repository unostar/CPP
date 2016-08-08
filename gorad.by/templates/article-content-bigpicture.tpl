<div class="b-maincontent">
<div class="header-block m-header-block-blue"><b class="bg-header-block-l"></b><b class="bg-header-block-r"></b>
  <span class="header-block-i"><h2><a href="/by/page/{{$gimme->section->url_name}}/">{{$gimme->article->section->name}}</a></h2><span class="header-block-text">{{if $gimme->article->author->name!=""}}<strong>{{$gimme->article->author->name}}</strong>, {{/if}}{{$gimme->article->publish_date|camp_date_format:"%d.%m.%Y"}}</span></span>
</div>
<div class="b-maincontent-il"><div class="b-maincontent-ir"><div class="b-maincontent-i">
  <!-- Статья -->
  <div class="c-article">

    <h1>{{$gimme->article->name}}</h1>

    <!-- слайдшоу -->
    <div class="slideshow">
      {{$gimme->article->intro|regex_replace:'#<a href="(.*?)">(.*?)</a>#is':'<a href="$1"><img src="$1" alt="$2" /></a><span>$2</span>'}}
    </div><!-- .slideshow -->
    <!-- //слайдшоу -->

    {{if $gimme->article->full_text}}
    <div class="c-article-content">
      {{$gimme->article->full_text}}
    </div>
    {{/if}}

    <div class="banner"></div><!-- .banner -->

    <div class="c-article-bottom c-article-funcs">
      <a href="#->  павялічыць/паменшыць шрыфт" class="c-article-funcs-item"><i class="ico ico-am"></i><i class="ico ico-ap"></i></a>
      <span class="c-article-funcs-item"><i class="ico ico-print"></i> <a target="_blank" href="/by/page/print/{{$gimme->article->number}}">надрукаваць </a></span>
      
      {{ include file="_article-share.tpl" }}

    </div>
  </div>
  <!-- //статья -->
</div></div></div>
  <span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div>
