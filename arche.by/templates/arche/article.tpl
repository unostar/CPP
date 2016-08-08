{{include file="arche/_html-head.tpl"}}
<body>
<div class="wrapper">

{{include file="arche/header.tpl"}}

<div class="middle">

<div class="main">
<section class="article-full-page">
{{set_default_article}}
<header><h2><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></h2></header>
{{include file="arche/tpl/article-social-buttons.tpl"}}
{{include file="arche/tpl/article-full.tpl"}}
{{include file="arche/tpl/article-comments.tpl"}}
{{include file="arche/tpl/article-bottom-banners.tpl"}}
<aside class="related-materials">
{{render file="arche/tpl/article-section-articles.tpl" article=off}}
{{include file="arche/tpl/article-map.tpl"}}
{{include file="arche/tpl/article-tags-related.tpl"}}
</aside><!-- .related-materials -->
{{set_issue number="1"}}{{set_default_section}}
</section><!-- .article-full-page -->
</div><!-- .main -->

<aside class="aside">
{{include file="arche/tpl/aside-banner-subscription.tpl"}}
{{render file="arche/tpl/aside-editorial.tpl"  issue=off section=off article=off}}
{{render file="arche/tpl/aside-main-news.tpl" section=off article=off}}
{{include file="arche/tpl/aside-video-archive.tpl"}}
{{include file="arche/tpl/aside-tabs-grants.tpl"}}
{{include file="arche/tpl/aside-banner-250x250.tpl"}}
{{render file="arche/tpl/aside-top-articles-and-comments.tpl"  issue=off section=off article=off}}
{{render file="arche/tpl/aside-blogs.tpl" issue=off section=off article=off}}
</aside><!-- .aside -->

</div><!-- .middle -->

{{include file="arche/tpl/section-bottom-news.tpl"}}

</div><!-- .wrapper -->

{{include file="arche/footer.tpl"}}
</body>
</html>