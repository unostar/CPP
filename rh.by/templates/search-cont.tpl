<div id="leftbar">        
        
{{ if $gimme->search_articles_action->defined }}
  {{ include file="search-results.tpl" }}
{{ /if }}

{{ include file="advanced-search.tpl" }}

</div><!-- /#leftbar -->