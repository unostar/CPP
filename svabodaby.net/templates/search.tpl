<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="{{$gimme->issue->language->code}}">
<meta name="keywords" content="{{$siteinfo.keywords}}" />
<meta name="description" content="{{$siteinfo.description}}" />
<title>{{$gimme->publication->name}}</title>
{{include file="_html_header.tpl"}}
</head>
{{set_default_issue}}
<body>
<div id="wrapper" class="clearfix">
  <div id="header">{{include file="_header.tpl"}}</div>
  <div id="main" class="clearfix">
    <div class="section search column-1 clearfix">

<div class="article_box">
<h4>Вынікі пошуку</h4>
<div class="big_article section">

{{ list_search_results length="10" order="bypublishdate desc" }}
<div class="big_article_data{{if $gimme->current_list->at_beginning}} first{{/if}}">
<h2><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></h2>
<p class="date">{{if $gimme->article->has_topics}}{{list_article_topics length="1"}}<a href="{{uripath options="section"}}?tpid={{$gimme->topic->identifier}}">{{$gimme->topic->name}} &nbsp;&bull;&nbsp;</a> {{/list_article_topics}}{{/if}}{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}</p>

    {{if $gimme->article->author->defined}}<p class="date">Аўтар: <span style="font-weight: bold">{{ $gimme->article->author->name }}</span></p>{{ /if }}    
    {{if $gimme->article->source != ""}}<p class="date"><span style="font-weight: bold"><a href="{{ $gimme->article->source_url }}">{{ $gimme->article->source }}</a></span></p>{{ /if }}      

<p>{{$gimme->article->intro|strip_tags|truncate:300:"..."}}</p>
<p class="more"><a href="{{uri options="article"}}" class="readmore">Чытаць увесь артыкул</a>{{if $gimme->article->comment_count}}Каментароу: <a href="{{uri options="article"}}#comments" class="comments">({{$gimme->article->comment_count}})</a>{{/if}}</p>
</div>
{{if $gimme->current_list->at_end}}
<div class="navigation">
<a class="previous_page" {{if $gimme->current_list->has_previous_elements}}href="{{uri options="prev_items"}}"{{/if}}>Папярэдняя</a>
<a class="next_page" {{if $gimme->current_list->has_next_elements }}href="{{uri options="next_items"}}"{{/if}}>Наступная</a>
</div>
{{/if}}
{{/list_search_results}}
{{ if $gimme->prev_list_empty }}<p>Нічога не знойдзена</p>{{ /if }}
</div>
</div>


    </div>
    <div class="column-2 clearfix">{{include file="column-2.tpl"}}</div>
    <div class="center-links">{{include file="front-center-links.tpl"}}</div>
  </div>
  <div id="footer">{{include file="_footer.tpl"}}</div>
</div>
</body>
</html>
