{{include file="_html-head.tpl"}}
{{include file="header.tpl"}}
<div class="middle">
  <div class="main">
  {{if $gimme->section->number==520}}{{include file="tpl/photo-article-content.tpl"}}{{else}}{{include file="tpl/article-content.tpl"}}{{/if}}
  {{include file="tpl/article-comments.tpl"}}
  {{include file="tpl/article-related.tpl"}}
  </div><!-- .main -->
{{include file="tpl/article-aside.tpl"}}
</div><!-- .middle -->
{{include file="footer.tpl"}}