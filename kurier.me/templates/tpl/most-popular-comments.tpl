<section class="recent-comments column">
  <h3 class="block-title"><span>Последние комментарии</span></h3>
	<div id="recentcomments" class="dsq-widget">
		{{php}}
			$src = @file_get_contents("http://vitkur.disqus.com/recent_comments_widget.js?num_items=3&hide_avatars=1&avatar_size=32&excerpt_length=100");
			preg_match ('#<ul class="dsq-widget-list">.*?</ul>#msi', $src, $match);
			$pattern = array('#&nbsp;&middot;&nbsp;<a href=".*?</a>#msi', '#\\\#si', '#Витебский курьер - #', '#<a class="dsq-widget-user.*?"#msi');
			$replace = array('','','','$0 rel="nofollow" target="_blank"');
			echo (preg_replace ($pattern, $replace, $match[0]));
		{{/php}}
	</div>
</section><!-- .recent-comments column -->
