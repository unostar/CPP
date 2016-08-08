{{ if $gimme->search_articles_action->ok }}
  <h1>Вынікі пошуку</h1>
{{else}}
  <h1>Пошук</h1>
{{/if}}

{{ list_search_results length="10" }}
  {{ if $gimme->current_list->at_beginning }}
    <h3 class="calendar">Знойдзена артыкулаў: {{ $gimme->current_list->count }}</h3>
  {{ /if }}
<div class="section-left-list">
  <h2><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h2>
  <p>{{$gimme->article->intro|truncate:300:"..."}}</p>
  <p class="comments"><a href="{{ uri options="article" }}">далей &#0187;</a></p>

  {{ if $gimme->current_list->at_end }}
    {{ if $gimme->current_list->has_previous_elements	 }}
      <a href="{{ uri options="previous_items" }}" style="display:inline-block;margin-top:20px;font-size:12px"><<< Раней&nbsp;</a>
    {{ /if }}
    {{ if $gimme->current_list->has_next_elements }}
      <a href="{{ uri options="next_items" }}" style="display:inline-block;margin-top:20px;font-size:12px">&nbsp;Пазней >>></a>
    {{ /if }}
  {{ /if }}
</div>
{{ /list_search_results }}

{{ if $gimme->prev_list_empty }}
<h3 class="calendar">Нічога не знойдзена</h3>
{{ /if }}


{{ if $gimme->search_articles_action->is_error }}
  <font color="red"><b>{{ $gimme->search_articles_action->error_code }} - {{ $gimme->search_articles_action->error_message }}</b></font>
{{ /if }}


<div class="archive-search-box">
{{ search_form template="radio/search.tpl" submit_button="" button_html_code="name=\"submitComment\" class=\"sbutton\" id=\"searchSubmit\"" }}
<fieldset>
<label>Шукаць:</label>{{camp_edit object="search" attribute="keywords" size="30" html_code="maxlength=\"255\" class=\"formInputText\""}}<br />
{{camp_select object="search" attribute="mode" html_code="checked=\"checked\" class=\"formcheck\""}}<label> па ўсіх словах</label><br />
<label>Крытэрыі пошуку:</label>
<input type="radio" class="radio" name="f_search_scope" value="title"><label>&nbsp;назва</label>
<input type="radio" class="radio" name="f_search_scope" value="content" checked><label>&nbsp;тэкст</label>
<input type="radio" class="radio" name="f_search_scope" value="author"><label>&nbsp;аўтар</label><br />
<label>Выданне:</label>{{ camp_select object="search" attribute="issue" html_code="class=\"formInputText\""}}<br />
<label>Рубрыка:</label>{{ camp_select object="search" attribute="section" html_code="class=\"formInputText\""}}<br />
{{*<label>Дата:</label><span class="search_calendar">{{camp_edit object="search" attribute="start_date"}}{{camp_edit object="search" attribute="end_date"}}</span><br />*}}
</fieldset>
{{ /search_form }}
</div>