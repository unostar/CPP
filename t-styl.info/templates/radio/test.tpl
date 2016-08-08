<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="copyright" content="Твой стыль радыё" />
<meta name="keywords" content="радыё,праграмы,новости,комментарии,каментары,вести,рубрыкi,падкаст,статья,артыкул,Гродно,навiны,Гародня" />
<meta name="description" content="Твой стыль - радыё навiны" />
<meta name="robots" content="all" />
{{ include file="radio/_html_head.tpl" }}
<title>Твой стыль - радыё навiны</title>


<style type="text/css">
div#box{width: 18em;padding: 20px;margin:0 auto;
    background:#E6E6E6;color:#000}
h1{font: lighter 200% "Trebuchet MS",Arial sans-serif;color: #208BE1}
h1,p{margin:0;padding:10px 20px}
</style>
<script type="text/javascript" src="/templates/radio/javascript/niftycube.js"></script>
<script type="text/javascript">
window.onload=function(){
Nifty("div#box","big");
}
</script>

</head>

<body>
{{ include file="radio/_header.tpl" }}
<div id="wrapper">
  <div class="wrapper-content clearfix">
    <div class="top-line"></div>
      <div class="section-left">
      <h1>{{ $gimme->section->name }}</h1>
{{ include file="radio/gallery-cont.tpl" }}
{{ include file="radio/article_comments.tpl" }}
{{ assign var="n_article" value=$gimme->article->number }}
    {{ list_articles ignore_issue="true" length="5" order="bypublishdate desc" }}
    {{ if $gimme->current_list->at_beginning && $gimme->current_list->count >1 }}
    <div class="article-left">
    <p class="title-others">{{if $n_article}}Iншыя галерэi рубрыкi{{else}}Галерэi рубрыкi{{/if}}</p>
    <p class="others">
    {{ /if }}
    {{ if ($gimme->article->number == $n_article ) }}{{ else }}
    <a href="{{ uri }}">{{ $gimme->article->name }}</a><br/>
    {{ /if }}
    {{ if $gimme->current_list->at_end }}
    </p>
    </div>
    {{ /if }}
    {{ /list_articles }}
      </div>
{{ include file="radio/section-cont-right.tpl" }}
{{ include file="radio/program-slider.tpl" }}

  </div>
</div>
{{ include file="radio/_footer.tpl" }}
<div id="box">
<h1>Nifty Corners Cube&trade;</h1>

<p>One call. Two parameters. Three sizes.</p>
</div>
</body>
</html>
