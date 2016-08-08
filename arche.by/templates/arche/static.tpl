{{include file="arche/_html-head.tpl"}}
<body>
<div class="wrapper">

{{include file="arche/header.tpl"}}

<div class="middle">

<div class="main">
<section class="static-page">

<header><h2>{{$gimme->section->name}}</h2></header>

{{list_articles length="1" constraints="type is static" ignore_issue="true" order="bypublishdate desc"}}
<article class="article-full">
<footer class="article-footer">
  <ul class="service">
    <li><a href="/{{$gimme->language->code}}/page/print/{{$gimme->article->number}}" class="print" target="_blank">Друкаваць</a></li>
  </ul><!-- .service -->
</footer><!-- .article-footer -->
<div class="article-content">
  {{$gimme->article->full_text}}
</div><!-- .article-content -->
</article><!-- .article-full -->
{{/list_articles}}

{{include file="arche/tpl/article-bottom-banners.tpl"}}
</section><!-- .static-page -->
</div><!-- .main -->

<aside class="aside">
{{include file="arche/tpl/aside-banner-subscription.tpl"}}
{{include file="arche/tpl/aside-editorial.tpl"}}
{{include file="arche/tpl/aside-main-news.tpl"}}
{{include file="arche/tpl/aside-video-archive.tpl"}}
{{include file="arche/tpl/aside-tabs-grants.tpl"}}
{{include file="arche/tpl/aside-banner-250x250.tpl"}}
{{include file="arche/tpl/aside-top-articles-and-comments.tpl"}}
{{include file="arche/tpl/aside-blogs.tpl"}}
</aside><!-- .aside -->

</div><!-- .middle -->

{{include file="arche/tpl/section-bottom-news.tpl"}}

</div><!-- .wrapper -->

{{include file="arche/footer.tpl"}}
</body>
</html>