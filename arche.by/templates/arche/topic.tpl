{{if $smarty.get.ajax}}
{{include file="arche/tpl/topic-content.tpl" page=$smarty.get.page ajax=$smarty.get.ajax}}
{{else}}
{{include file="arche/_html-head.tpl"}}
<body>
<div class="wrapper">

{{include file="arche/header.tpl"}}

<div class="middle">

<div class="main">
{{include file="arche/tpl/topic-content.tpl"}}
<div class="section-footer">
{{include file="arche/tpl/section-content-banners.tpl"}}
</div><!-- .section-footer -->
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
{{/if}}