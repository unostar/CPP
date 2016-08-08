{{if $smarty.get.ajax}}
{{if $gimme->search_articles_action->defined}}{{include file="tpl/archive-search-results.tpl"}}{{else}}{{include file="tpl/archive-content.tpl"}}{{/if}}
{{else}}
{{include file="_html-head.tpl"}}
{{include file="header.tpl"}}
<div class="middle">
	<div class="main">
    {{include file="tpl/archive-search-pane.tpl"}}
    <div id="archive-content">{{if $gimme->search_articles_action->defined}}{{include file="tpl/archive-search-results.tpl"}}{{else}}{{include file="tpl/archive-content.tpl"}}{{/if}}</div>
  </div><!-- .main -->
{{include file="tpl/section-aside.tpl"}}
</div><!-- .middle -->
{{include file="footer.tpl"}}
{{/if}}