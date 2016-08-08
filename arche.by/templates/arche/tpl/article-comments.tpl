<aside class="comments">
<header><h2>Камэнтары</h2></header>

{{list_article_comments}}
{{if $gimme->current_list->at_beginning}}
<div class="old_comments"><ul>
{{/if}}
<li class="dsq-comment dsq-clearfix">
  <div class="dsq-avatar dsq-tt"><a><img src="http://mediacdn.disqus.com/images/noavatar32.png" class="" alt=""></a></div>
  <div class="dsq-comment-body">
    <div class="dsq-comment-header"><span class="dsq-commenter-name">{{$gimme->comment->reader_email}}</span></div>
    <div class="dsq-comment-message"><div class="dsq-comment-text">{{$gimme->comment->content|escape:"html"}}</div></div>
    <div class="dsq-comment-footer"><ul class="dsq-comment-meta"><li><a>{{$gimme->comment->submit_date|camp_date_format:"%H:%i %d/%m/%Y"}}</a></li></ul></div>
  </div>
</li>
{{if $gimme->current_list->at_end}}
</ul></div>
{{/if}}
{{/list_article_comments}}

<div id="disqus_thread"></div>
</aside><!-- .comments -->
