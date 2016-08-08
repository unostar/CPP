{{ include file="_html_head.tpl" }}

<body  id="article">

<div id="wrap">

{{ include file="header.tpl" }}

{{ include file="main-nav.tpl" }}

{{ if $gimme->article->type_name == "service" }}
  {{ include file="article-service.tpl" }}
{{ /if }}

{{ if $gimme->article->type_name == "static" }}
  {{ include file="article-static.tpl" }}
{{ /if }}

{{ if $gimme->article->type_name == "A_text" }}
    {{ include file="article-cont.tpl" }}
  {{ /if }}

{{ include file="front-rightbar.tpl" }}

</div><!-- /#wrap -->

{{ include file="footer.tpl" }}

</body>
</html>