{{include file="video/_html-head.tpl"}}
{{include file="video/header.tpl"}}
<div class="middle">
<div class="main">
<section>
<header>
	<h2>Відэа па тэме “{{$smarty.get.topic}}”</h2>
	<a href="/{{$gimme->language->code}}/channel/topics/?sort=byPopularity&amp;topic={{$smarty.get.topic|escape:'url':'utf-8'}}" class="more">папулярнасьць</a>
	<a href="/{{$gimme->language->code}}/channel/topics/?sort=byPublishDate&amp;topic={{$smarty.get.topic|escape:'url':'utf-8'}}" class="more">даТА</a>
</header>
<div id="section-content">{{include file="video/tpl/topics-content.tpl"}}</div>
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