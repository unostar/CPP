{{ if $gimme->search_articles_action->ok }}
<b>Результаты поиска</b><br/>
{{else}}
<b>Расширенный поиск</b><br/>
{{/if}}

{{ list_search_results length="10" }}
  {{ if $gimme->current_list->at_beginning }}<p>Всего найдено статей: {{ $gimme->current_list->count }}. Показаны: {{ $gimme->current_list->start+1 }} - {{ $gimme->current_list->end }}</p>{{ /if }}
  
  <div class="search-results">  
  <a href="{{ uri options="article" }}" class="title-article">{{ $gimme->article->name }}</a><br />
  {{ $gimme->article->Intro }}
  </div>

  {{ if $gimme->current_list->at_end }}
    {{ if $gimme->current_list->has_previous_elements }}<a href="{{ uri options="previous_items" }}" style="display:inline-block;margin-top:20px;text-decoration:none;font-weight:bold;font-style:oblique;"><<< Предыдущая&nbsp;</a>{{ /if }}
    {{ if $gimme->current_list->has_next_elements }}<a href="{{ uri options="next_items" }}" style="display:inline-block;margin-top:20px;text-decoration:none;font-weight:bold;font-style:oblique;">&nbsp;Следующая >>></a>{{ /if }}
  {{ /if }}

{{ /list_search_results }}


{{ if $gimme->prev_list_empty }}
<p>Не найдено статей</p>
{{ /if }}

{{ if $gimme->search_articles_action->is_error }}
<font color="red"><b>{{ $gimme->search_articles_action->error_code }} - {{ $gimme->search_articles_action->error_message }}</b></font>
{{ /if }}

{{ if $gimme->search_articles_action->ok }}
<br /><br /><br />
<b>Дополнительные параметры поиска:</b>
{{else}}
<b>Параметры поиска:</b>
{{/if}}

<div class="search-advanced">  
{{ search_form template="search.tpl" submit_button="Поиск" }}
<fieldset>

<label for="SearchKeyword">Искать:</label>
  {{ camp_edit object="search" attribute="keywords" size="32" html_code="id=\"SearchKeyword\""}}
    {{ camp_select object="search" attribute="mode" html_code="style=\"vertical-align:middle;\""}} по всем словам<br />

<label for="SearchCriteria">Критерий поиска:</label>
    <input type="radio" name="f_search_scope" value="title">&nbsp;название
    <input type="radio" name="f_search_scope" value="content" checked>&nbsp;содержимое
    <input type="radio" name="f_search_scope" value="author">&nbsp;автор<br />

<label for="SearchLevel">Искать в:</label>
  {{ camp_select object="search" attribute="level" html_code="id=\"SearchKeyword\"" }}<br />

<label for="SearchSection">Рубрика:</label>
  {{ camp_select object="search" attribute="section" html_code="id=\"SearchSection\""}}<br />

<label for="SearchDate">Дата:</label>
  <input type="text" style="vertical-align:middle;" id="f_search_start_date" name="f_search_start_date" />&nbsp;&nbsp;-&nbsp;&nbsp;<input type="text" style="vertical-align:middle;" id="f_search_end_date" name="f_search_end_date" /><br />

</fieldset>
{{ /search_form }}
</div>