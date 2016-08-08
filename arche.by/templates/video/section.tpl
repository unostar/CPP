{{include file="video/_html-head.tpl"}}
{{include file="video/header.tpl"}}
{{include file="video/tpl/section-new-materials.tpl"}}
<div class="middle">
<div class="main">
<section>
<header>
	<h2>{{$gimme->section->name}} ({{list_articles constraints="type is video" ignore_issue="true"}}{{if $gimme->current_list->at_end}}{{$gimme->current_list->count}}{{/if}}{{/list_articles}})</h2>
	<a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/?sort=byPopularity" class="more">папулярнасьць</a>
	<a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/?sort=byPublishDate" class="more">даТА</a>
</header>
<div id="section-content">{{include file="video/tpl/section-content.tpl"}}</div>
</section>
{{include file="video/tpl/popular-video.tpl"}}
<ul class="banners">
	<li><script>OA_show(161);</script></li>
	<li><script>OA_show(162);</script></li>
</ul><!-- .banners -->
</div><!-- .main -->
{{include file="video/tpl/section-aside.tpl"}}
</div><!-- .middle -->
{{include file="video/footer.tpl"}}