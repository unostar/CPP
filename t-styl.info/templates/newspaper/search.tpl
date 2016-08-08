<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Твой стыль - он-лайн версiя друкаванага выдання</title>
{{ include file="newspaper/_html_head.tpl" }}
</head>
<body>
<div id="wrapper">
{{ include file="newspaper/_header.tpl" }}
{{ include file="newspaper/_top_menu_bar.tpl" }}

<div id="section-content" class="clearfix">
  <div class="section-content-columns">
    {{ include file="newspaper/front-column-1.tpl" }}
<div class="section-column-2 clearfix">
 <div class="column-2-content">


{{ if $gimme->search_articles_action->ok }}
<h2>Вынікі пошуку</h2>
{{else}}
<h2>Прадвинуты пошук</h2>
{{/if}}

{{ list_search_results length="10" }}
  {{ if $gimme->current_list->at_beginning }}
    <p class="byline">Знойдзена артыкулау: {{ $gimme->current_list->count }}</p>
  {{ /if }}

  <br /><a href="{{ uri options="article" }}" class="commnets"><h2>{{ $gimme->article->name }}</h2></a>
  {{ $gimme->article->Intro }}<p><a href="{{ uri options="article" }}" class="smore">далей &gt;&gt;</a></p>

  {{ if $gimme->current_list->at_end }}
    {{ if $gimme->current_list->has_previous_elements	 }}
      <a href="{{ uri options="previous_items" }}" style="display:inline-block;margin-top:20px;font-size:12px"><<< Предыдущая&nbsp;</a>
    {{ /if }}
    {{ if $gimme->current_list->has_next_elements }}
      <a href="{{ uri options="next_items" }}" style="display:inline-block;margin-top:20px;font-size:12px">&nbsp;Следующая >>></a>
    {{ /if }}
  {{ /if }}

{{ /list_search_results }}

{{ if $gimme->prev_list_empty }}
<h2><span class="tsection">Нічога не знойдзена</span></h2>
{{ /if }}

{{ if $gimme->search_articles_action->is_error }}
<font color="red"><b>{{ $gimme->search_articles_action->error_code }} - {{ $gimme->search_articles_action->error_message }}</b></font>
{{ /if }}

<div class="article-comments">
{{ if $gimme->search_articles_action->ok }}
<h2 class="other">Дадатковыя крытэрыі пошуку</h2>
{{else}}
<h2 class="other">Крытэрыі пошуку</h2>
{{/if}}
{{ search_form template="newspaper/search.tpl" submit_button="Пошук" button_html_code="class=\"searchButton\"" }}
<fieldset>
<label for="SearchKeyword">Шукаць:</label>{{ camp_edit object="search" attribute="keywords" size="32" html_code="class=\"searchInputText\" id=\"SearchKeyword\""}}{{ camp_select object="search" attribute="mode" html_code="style=\"vertical-align:middle;\""}} па усіх словах<br />
<label for="SearchCriteria">Крытэрыі пошуку:</label><div id="SearchCriteria">
<input type="radio" name="f_search_scope" value="title">&nbsp;назва
<input type="radio" name="f_search_scope" value="content" checked>&nbsp;тэкст
<input type="radio" name="f_search_scope" value="author">&nbsp;аутар</div><br />
{{* <label for="SearchLevel">Шукаць у:</label>{{ camp_select object="search" attribute="level" html_code="class=\"searchInputText\" id=\"SearchKeyword\"" }}<br /> *}}
<label for="SearchШыыгу">Выданне:</label>{{ camp_select object="search" attribute="issue" html_code="class=\"searchInputText\" id=\"SearchIssue\""}}<br />
<label for="SearchSection">Рубрыка:</label>{{ camp_select object="search" attribute="section" html_code="class=\"searchInputText\" id=\"SearchSection\""}}<br />
{{* <label for="SearchTopic">Тэма:</label><select name="f_search_topic" class="searchInputText" id="SearchTopic">{{ unset_topic }}{{ list_subtopics }}<option value="{{ $gimme->topic->identifier }}>">{{ $gimme->topic->name }}</option>{{ /list_subtopics }}</select> *}}
<label for="SearchDate">Дата:</label><div id="SearchDate">{{ camp_edit object="search" attribute="start_date" html_code="style=\"vertical-align:middle;\"" }}&nbsp;&nbsp;-&nbsp;&nbsp;{{ camp_edit object="search" attribute="end_date" html_code="style=\"vertical-align:middle;\"" }}</div><br />
</fieldset>
{{ /search_form }}
</div>
</div>
</div>

    {{ include file="newspaper/section-column-3.tpl" }}
    {{ include file="newspaper/section-banner.tpl" }}
  </div>
</div>

{{ include file="newspaper/_footer.tpl" }}
</div>
</body>
</html>
