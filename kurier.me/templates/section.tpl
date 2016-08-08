{{if $smarty.get.ajax}}
{{include file="tpl/section-list-articles.tpl" page=$smarty.get.page ajax=$smarty.get.ajax}}
{{elseif $smarty.get.type == "rss"}}{{include file="rss.tpl"}}
{{else}}
{{include file="_html-head.tpl"}}
{{include file="header.tpl"}}
<div class="middle">
{{include file="tpl/front-exclusive-video.tpl"}}
	<div class="main">
  {{include file="tpl/section-list-articles.tpl"}}
  {{include file="tpl/most-popular.tpl"}}
  {{include file="tpl/_banner-section-bottom-728x90.tpl"}}
	</div><!-- .main -->
{{include file="tpl/section-aside.tpl"}}
</div><!-- .middle -->
{{include file="footer.tpl"}}
{{/if}}