<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="{{$gimme->issue->language->code}}">
<meta name="keywords" content="{{$siteinfo.keywords}}" />
<meta name="description" content="{{$siteinfo.description}}" />
<title>{{$gimme->publication->name}}</title>
{{include file="_html_header.tpl"}}
<link href="/templates/css/archive.css" rel="stylesheet" type="text/css" />
</head>
{{set_default_issue}}
<body>
<div id="wrapper" class="clearfix">
  <div id="header">{{include file="_header.tpl"}}</div>
  <div id="main" class="clearfix">
    <div class="column-1 clearfix">

<div class="archive-box">

<div class="search-box"><p class="search-title">Пошук</p>
{{ search_form template="search.tpl" submit_button="Пошук" button_html_code="class=\"searchButton\"" }}
<fieldset>
<dl>
  <dt><label for="SearchKeyword">Шукаць:</label></dt>
  <dd>{{camp_edit object="search" attribute="keywords" html_code="id=\"SearchKeyword\" class=\"searchInputText\""}}</dd>
</dl>
<dl>
  <dt>&nbsp;</dt>
  <dd>{{camp_select object="search" attribute="mode" html_code="id=\"f_match_all\" checked=\"checked\""}}<label for="f_match_all">па усіх словах</label></dd>
</dl>
<dl>
  <dd>
      <input type="radio" name="f_search_scope" value="title" />&nbsp;назва
      <input type="radio" name="f_search_scope" value="content" checked="checked" />&nbsp;тэкст
      <input type="radio" name="f_search_scope" value="author" />&nbsp;аутар
  </dd>
</dl>
<dl>
  <dt><label for="SearchSection">Рубрыка:</label></dt>
  <dd>{{camp_select object="search" attribute="section" html_code="class=\"searchInputText\" id=\"SearchSection\""}}</dd>
</dl>
<dl>
  <dt><label for="SearchDate">Дата:</label></dt>
  <dd>{{camp_edit object="search" attribute="start_date" html_code="id=\"f_search_start_date\""}}
      {{camp_edit object="search" attribute="end_date" html_code="id=\"f_search_end_date\""}}
  </dd>
</dl>
</fieldset>
{{/search_form}}
</div>
<a href="/by/page/pdf" style="float:right;clear:right;margin-top:20px;">Архіў PDF версій нумароў</a>
{{php}}
  $this->assign('months', array(1=>'Студзень',2=>'Люты',3=>'Сакавiк',4=>'Красавiк',5=>'Май',6=>'Чэрвень',7=>'Лiпень',8=>'Жнiвень',9=>'Верасень',10=>'Кастрычнiк',11=>'Лiстапад',12=>'Снежань'));
  $this->assign('sections', array(20=>'Палiтыка',30=>'Эканомiка',40=>'Грамадства',50=>'Рэгiёны',51=>'Культура',52=>'Спорт',70=>'Погляд',110=>'PDF версія выдання'));
{{/php}}
{{assign var="issue_month" value=$gimme->issue->mon}}
  <ul>
    <li class="year"><h3>{{$gimme->issue->name}}</h3></li>
      <li class="accordion"><a class="open" href="#">{{$gimme->issue->year}} - {{$months[$issue_month]}}</a>
        <ul class="issue-articles" style="display:block !important;">
          {{section name=rubrika loop=120 start=20 step=1}}
          {{if $sections[$smarty.section.rubrika.index]}}
          {{set_section number=$smarty.section.rubrika.index}}
          {{list_articles length="1"}}<li class="section-name">{{$sections[$smarty.section.rubrika.index]}}</li>{{/list_articles}}
{{if !$gimme->prev_list_empty}}
          {{list_articles order="bypublishdate desc"}}
{{if $smarty.section.rubrika.index == 110}}
{{list_article_attachments length="1"}}
            <li><a href="{{uri options="articleAttachment"}}">Спампаваць: {{$gimme->attachment->description}}</a>
{{/list_article_attachments}}
{{else}}
            <li><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></li>
{{/if}}
          {{/list_articles}}
{{/if}}
          {{/if}}
          {{/section}}
        </ul>
      </li>
  </ul>

{{set_default_issue}}
</div>

    </div>
    <div class="column-2 clearfix">{{include file="column-2.tpl"}}</div>
    <div class="center-links">{{include file="front-center-links.tpl"}}</div>
  </div>
  <div id="footer">{{include file="_footer.tpl"}}</div>
</div>
</body>
</html>