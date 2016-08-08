{{include file="arche/_html-head.tpl"}}
<body>
<div class="wrapper">

{{include file="arche/header.tpl"}}

<div class="middle">

<div class="main">
{{if $gimme->section->number==80}}
  {{include file="arche/tpl/section-content-jokes.tpl"}}
{{else}}
  {{include file="arche/tpl/section-content.tpl"}}
{{/if}}
<div class="section-footer">
{{include file="arche/tpl/section-content-video.tpl"}}
{{include file="arche/tpl/section-content-banners.tpl"}}
</div><!-- .section-footer -->
</div><!-- .main -->

<aside class="aside">
{{include file="arche/tpl/aside-banner-subscription.tpl"}}
{{render file="arche/tpl/aside-editorial.tpl" issue=off section=off article=off}}
{{render file="arche/tpl/aside-main-news.tpl" section=off article=off}}
{{include file="arche/tpl/aside-video-archive.tpl"}}
{{include file="arche/tpl/aside-tabs-grants.tpl"}}
{{include file="arche/tpl/aside-banner-250x250.tpl"}}
{{render file="arche/tpl/aside-top-articles-and-comments.tpl" issue=off section=off article=off}}
{{render file="arche/tpl/aside-blogs.tpl" issue=off section=off article=off}}
</aside><!-- .aside -->

</div><!-- .middle -->

{{include file="arche/tpl/section-bottom-news.tpl"}}

</div><!-- .wrapper -->

{{include file="arche/footer.tpl"}}
</body>
</html>