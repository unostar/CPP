<div id="comments">
<h5>абмеркаванне</h5>
{{ list_article_comments order="bydate asc" }}
<div class="comment-item">
<p class="comment-author">{{ $gimme->comment->subject }} ({{ $gimme->comment->submit_date|camp_date_format:"%e.%m.%Y %H:%i" }})</p>
<p>{{ $gimme->comment->content }}</p>
</div><!-- /.comment-item -->
{{ /list_article_comments }}
<div id="comments-separator"></div>
<div id="disqus_thread"></div>
<script type="text/javascript">
var disqus_shortname = 'nv-online';
var disqus_identifier = 'nv-online-{{$gimme->article->number}}';
var disqus_url = '{{url options="article"}}';
(function() {
  var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
  dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
  (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
})();
</script>
</div><!-- /#comments -->