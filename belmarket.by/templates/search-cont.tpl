{{ dynamic }}
<div class="home-column-middle">
  <div class="content-middle">

{{ if $gimme->search_articles_action->ok }}
<h3 class="top-title-article">Результаты поиска</h3><br/>
{{else}}
<h3 class="top-title-article">Расширенный поиск</h3><br/>
{{/if}}
{{ list_search_results length="10" }}
  {{ if $gimme->current_list->at_beginning }}
    <p class="author">Найдено статей: {{ $gimme->current_list->count }}</p><br />
  {{ /if }}

  <div class="top-news-section-left" style="width:630px;">
  <b><a href="{{ uri options="article" }}" class="title-article">{{ $gimme->article->name }}
{{ list_articles length="1" constraints="section is 5"}}№{{ $gimme->article->name }}, {{ $gimme->article->Lead }}{{ /list_articles }}
</a></b>
  <p class="text">{{$gimme->article->Lead|strip_tags:false|truncate:300}}</p>
  <hr style="background:#DDD;border:none;height:1px;" />
  </div>

  {{ if $gimme->current_list->at_end }}
    {{ if $gimme->current_list->has_previous_elements   }}
      <a href="{{ uri options="previous_items" }}" style="display:inline-block;margin-top:20px;"><<< Предыдущая&nbsp;</a>
    {{ /if }}
    {{ if $gimme->current_list->has_next_elements }}
      <a href="{{ uri options="next_items" }}" style="display:inline-block;margin-top:20px;">&nbsp;Следующая >>></a>
    {{ /if }}
  {{ /if }}

{{ /list_search_results }}

{{ if $gimme->prev_list_empty }}
    <p class="author">Не найдено статей</p>
{{ /if }}

{{ if $gimme->search_articles_action->is_error }}
<font color="red"><b>{{ $gimme->search_articles_action->error_code }} - {{ $gimme->search_articles_action->error_message }}</b></font>
{{ /if }}

{{ if $gimme->search_articles_action->ok }}
<div style="clear:both;"></div>
<br /><br /><br />
<h3>Дополнительные параметры поиска:</h3>
{{else}}
<h3>Параметры поиска:</h3>
{{/if}}
<div class="articlecomments">
{{ search_form template="search.tpl" submit_button="Поиск" method="get"}}
<fieldset>
<label for="SearchKeyword">Искать:</label>{{ camp_edit object="search" attribute="keywords" size="32" html_code="class=\"searchInputText\" id=\"SearchKeyword\""}}{{ camp_select object="search" attribute="mode" html_code="style=\"vertical-align:middle;\""}} по всем словам<br />
<label for="SearchCriteria">Критерий поиска:</label><div id="SearchCriteria">
<input type="radio" name="f_search_scope" value="title">&nbsp;название
<input type="radio" name="f_search_scope" value="keywords" checked>&nbsp;ключевое слово
<input type="radio" name="f_search_scope" value="author">&nbsp;автор</div><br />
<label for="SearchLevel">Искать в:</label>{{ camp_select object="search" attribute="level" html_code="class=\"searchInputText\" id=\"SearchKeyword\"" }}<br />
<label for="SearchSection">Рубрика:</label>{{ camp_select object="search" attribute="section" html_code="class=\"searchInputText\" id=\"SearchSection\""}}<br />
<label for="SearchDate">Дата:</label><div id="SearchDate"><input type="text" maxlength="19" size="19" id="f_search_start_date" value="" name="f_search_start_date">&nbsp;&nbsp;-&nbsp;&nbsp;<input type="text" maxlength="19" size="19" id="f_search_end_date" value="" name="f_search_end_date"></div><br />
</fieldset>
{{ /search_form }}
</div>
</div>
</div>
{{ /dynamic }}