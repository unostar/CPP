{{if $gimme->article->comments_enabled}}
<a name="comments"></a><div class="b-bheader_gray"><span><b>комментарии</b></span></div>
{{if $gimme->article->comment_count}}
<div class="b-navi b-allcomments">
	<div class="b-bheader_black"><span>комментарии к статье</span></div>
	<div>
{{list_article_comments order="byDate asc"}}
		<div class="b-allcomments_item">
			<div class="b-allcomments_header">
				<span class="b-allcomments_name">{{$gimme->comment->reader_email}}</span>
				<div class="b-vnimaniya_credits"><i class="ico ico-comments"></i>{{$gimme->comment->submit_date|camp_date_format:" %H:%i - %d.%m.%Y"}}</div>
			</div>
			<p>{{$gimme->comment->content}}</p>
		</div>
{{/list_article_comments}}
	</div>
</div>
{{/if}}
{{if $gimme->article->comments_locked}}
<div class="b-comments_response error"><p>Дальнейшее комментирование заблокировано</p></div>
{{else}}
<a name="commentsform"></a>
<div class="b-navi m-navi_bgbottom b-sendcomment">
	<div class="b-bheader_black"><span>Отправить комментарий</span></div>
  <div id="commentsform">{{include file="article-comments-form.tpl"}}</div>
</div>
{{/if}}
{{/if}}
