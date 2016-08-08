{{ include file="_html-head.tpl" }}
<body>
<div id="wrapper">
  {{ include file="_header.tpl" }}
    <div id="content-wrapper" class="clearfix">

<div class="section-content">
      <div class="section clearfix">
        <div class="section-left">
          <div class="section-title">{{ if $gimme->search_articles_action->ok }}Результаты поиска{{else}}Прадвинуты пошук{{/if}}</div>

<!-- search results and form -->

{{ list_search_results length="10" }}
  {{ if $gimme->current_list->at_beginning }}
    <p class="byline">Найдено статей: {{ $gimme->current_list->count }}</p>
  {{ /if }}

  <br /><h2><a href="{{ uri options="article" }}" class="commnets">{{ $gimme->article->name }}</a></h2>
  {{ $gimme->article->Intro }}<p><a href="{{ uri options="article" }}" class="smore">дальше &gt;&gt;</a></p>

  {{ if $gimme->current_list->at_end }}
    {{ if $gimme->current_list->has_previous_elements   }}
      <a href="{{ uri options="previous_items" }}" style="display:inline-block;margin-top:20px;font-size:12px"><<< Предыдущая&nbsp;</a>
    {{ /if }}
    {{ if $gimme->current_list->has_next_elements }}
      <a href="{{ uri options="next_items" }}" style="display:inline-block;margin-top:20px;font-size:12px">&nbsp;Следующая >>></a>
    {{ /if }}
  {{ /if }}

{{ /list_search_results }}

{{ if $gimme->prev_list_empty }}
<h2><span class="tsection">Не найдено статей</span></h2>
{{ /if }}

{{ if $gimme->search_articles_action->is_error }}
<font color="red"><b>{{ $gimme->search_articles_action->error_code }} - {{ $gimme->search_articles_action->error_message }}</b></font>
{{ /if }}

<br/>
<div class="articlecomment-hr"><hr /></div>
<br/>
<div class="articlecomments">
{{ if $gimme->search_articles_action->ok }}
<h2 class="other">Дополнительные параметры поиска:</h2>
{{else}}
<h2 class="other">Критерий поиска:</h2>
{{/if}}
{{ search_form template="search.tpl" submit_button="Поиск" button_html_code="class=\"searchButton\"" }}
<fieldset>
<label for="SearchKeyword">Искать:</label>{{ camp_edit object="search" attribute="keywords" size="32" html_code="class=\"searchInputText\" id=\"SearchKeyword\""}}{{ camp_select object="search" attribute="mode" html_code="style=\"vertical-align:middle;\""}} по всем словам<br />
<label for="SearchCriteria">Критерии поиска:</label><div id="SearchCriteria">
<input type="radio" name="f_search_scope" value="title">&nbsp;название
<input type="radio" name="f_search_scope" value="content" checked>&nbsp;содержимое
<input type="radio" name="f_search_scope" value="author">&nbsp;автор</div><br />
<label for="SearchIssue">Издание:</label>{{ camp_select object="search" attribute="issue" html_code="class=\"searchInputText\" id=\"SearchIssue\""}}<br />
<label for="SearchSection">Выпуск:</label>{{ camp_select object="search" attribute="section" html_code="class=\"searchInputText\" id=\"SearchSection\""}}<br />
<label for="SearchDate">Дата:</label><div id="SearchDate">{{ camp_edit object="search" attribute="start_date" html_code="style=\"vertical-align:middle;\"" }}&nbsp;&nbsp;-&nbsp;&nbsp;{{ camp_edit object="search" attribute="end_date" html_code="style=\"vertical-align:middle;\"" }}</div><br />
</fieldset>
{{ /search_form }}
<br/>
</div>

<!-- end search results and form -->
        </div>
        <div class="section-right">{{ include file="section-right.tpl" }}</div>
        <div class="section-fulldivider"><hr /></div>
      </div>
      <div class="banner-section">{{ include file="banner-middle728x90.tpl" }}</div>
    </div>
      <div class="column-divider clearfix"><hr /></div>
    </div>
  {{ include file="_footer.tpl" }}
</div>
</body>
</html>