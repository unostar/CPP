{{if $gimme->article->comments_enabled}}
{{if $gimme->article->comment_count}}
<a name="comments"></a>
<div class="b-main header-huge">Комментарии ({{$gimme->article->comment_count}})</div>
<div class="b-main">
  <dl class="b-comm">
{{list_article_comments order="byDate asc"}}
    <dt><span>{{$gimme->comment->nickname}}, </span>{{$gimme->comment->submit_date|camp_date_format:" %d.%m.%Y %H:%i"}}</dt>
    <dd>{{$gimme->comment->content|strip_tags:false|replace:'\"':'"'|escape:'htmlall':'utf-8'}}</dd>
{{/list_article_comments}}
  </dl>
</div>
{{/if}}
{{if !$gimme->article->comments_locked}}
<div class="b-main header-huge">ОТПРАВИТЬ КОММЕНТАРИЙ</div>
<div id="CommentsForm" class="b-main m-main_comments">{{include file="article-comments-form.tpl"}}</div>
{{/if}}
{{/if}}
