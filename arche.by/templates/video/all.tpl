{{include file="video/_html-head.tpl"}}
{{include file="video/header.tpl"}}
<div class="middle">
<div class="main">
<section>
<header>
	<h2>Усё відэа</h2>
	<a href="/{{$gimme->language->code}}/channel/all/?sort=byPopularity" class="more">папулярнасьць</a>
	<a href="/{{$gimme->language->code}}/channel/all/?sort=byPublishDate" class="more">даТА</a>
</header>
<div id="section-content">{{include file="video/tpl/all-content.tpl"}}</div>
</section>
<ul class="banners">
	<li><script>OA_show(161);</script></li>
	<li><script>OA_show(162);</script></li>
</ul><!-- .banners -->
</div><!-- .main -->
{{include file="video/tpl/section-aside.tpl"}}
</aside><!-- .aside -->
</div><!-- .middle -->
{{include file="video/footer.tpl"}}