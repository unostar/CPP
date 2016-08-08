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
    {{ list_articles length="10" ignore_issue="true" order="bypublishdate desc" name="gal"}}
    {{ if $gimme->current_list->at_beginning && $gimme->current_list->count >1 }}
    <div class="article-left">
    <p class="title-others">{{if $n_article}}Iншыя галерэi рубрыкi{{else}}Галерэi рубрыкi{{/if}}</p>
    {{ /if }}
    {{ if ($gimme->article->number == $n_article ) }}{{ else }}
     <div class="section-left-list">
          <h2><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h2>
<p class="date">{{ if $gimme->article->author->name == "" }}{{ else }}{{ $gimme->article->author->name }}<span>I</span>{{/if}}{{ $gimme->article->publish_date|camp_date_format:"%d %m %Y" }}</p>         
{{if !$n_article}}{{* don't show intro on article page listing of other galleries *}}
          <img style="float: left; margin: 5px 5px 5px 0; border: 1px solid #ccc;" src="{{ uri options="image 100 width 100" }}" />
          <div class="intro">{{ $gimme->article->Intro }}</div>
{{ /if }}
    </div>
    <div class="clear"></div>
    {{ /if }}
    {{ if $gimme->current_list->at_end }}

{{ unset_article }}
<p class="others" style="margin-top: 20px">
            {{ if $gimme->current_list->has_previous_elements   }}
              <a href="{{ uri options="previous_items" name="gal"}}" ><<< Раней&nbsp;</a>
            {{ /if }}
            {{ if $gimme->current_list->has_next_elements }}
              <a href="{{ uri options="next_items" name="gal"}}" >&nbsp;Пазней >>></a>
            {{ /if }}
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
</body>
</html>
