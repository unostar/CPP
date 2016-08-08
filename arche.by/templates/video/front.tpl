{{include file="video/_html-head.tpl"}}
{{include file="video/header.tpl"}}

<section class="featured">
	<div class="featured-inner">
		{{include file="video/tpl/front-content-main-news.tpl"}}
		{{include file="video/tpl/front-content-last-reports.tpl"}}
	</div><!-- .featured-inner -->
</section><!-- .featured -->

<div class="middle">
  <div class="main">
		{{include file="video/tpl/popular-video.tpl"}}
		{{include file="video/tpl/front-content-video-news.tpl"}}
		{{include file="video/tpl/front-content-last-videos.tpl"}}
    <ul class="banners">
    	<li><script>OA_show(140);</script></li>
    	<li><script>OA_show(141);</script></li>
    </ul><!-- .banners -->
  </div><!-- .main -->
  {{include file="video/tpl/front-aside.tpl"}}
</div><!-- .middle -->

{{include file="video/tpl/front-rss-content.tpl"}}
{{include file="video/tpl/front-bottom-partners.tpl"}}

{{include file="video/footer.tpl"}}