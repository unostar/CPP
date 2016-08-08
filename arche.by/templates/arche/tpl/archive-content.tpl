<section class="archive-page">
  <header>
    <h2>{{$gimme->section->name}}</h2>
    {{* <ul><li><a href="">Архіў кнігарні</a></li><li><a href="">Відэаархіў</a></li></ul> *}}
  </header>
{{include file="arche/tpl/archive-search-pane.tpl"}}
<div class="search-results" id="archive-content">
{{include file="arche/tpl/archive-search-results.tpl"}}
</div><!-- .search-results -->
{{include file="arche/tpl/section-content-banners.tpl"}}
</section><!-- .archive-page -->
