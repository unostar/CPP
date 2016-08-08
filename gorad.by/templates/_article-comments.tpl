{{if $gimme->article->comments_enabled}}
{{if $gimme->article->comments_locked && $gimme->article->comment_count == 0}}
{{else}}
<div class="b-maincontent">
<h2 class="header-block m-header-block-blue"><b class="bg-header-block-l"></b><b class="bg-header-block-r"></b>
<span class="header-block-i">Каментары {{if $gimme->article->comment_count}}({{$gimme->article->comment_count}}){{/if}}</span>
</h2>
<div class="b-maincontent-il"><div class="b-maincontent-ir"><div id="comments" class="b-maincontent-i">
{{list_article_comments order="byDate asc"}}
{{if $gimme->current_list->at_beginning}}<dl id="comments_list" class="c-commentstext">{{/if}}
  <dt><i class="ico ico-comm"></i> <a>{{$gimme->comment->reader_email}}</a> - <span>{{$gimme->comment->submit_date|camp_date_format:"%d %M %Y у %H:%i"}}</span></dt>
  <dd>{{$gimme->comment->content|strip_tags:false|replace:'\"':'"'|escape:'htmlall':'utf-8'}}</dd>
{{if $gimme->current_list->at_end}}</dl>{{/if}}
{{/list_article_comments}}
{{if !$gimme->article->comments_locked}}{{include file="article-comments-form.tpl"}}{{/if}}
</div></div></div>
<span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div>
{{/if}}
{{/if}}