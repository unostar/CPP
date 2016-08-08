<div class="search-box">
{{ search_form submit_button="Искать" template="search.tpl"  button_html_code="class=\"button\"" }}
Поиск:&nbsp;&nbsp;&nbsp;
<label for="searchtext" class="none">Search</label>
{{ camp_edit object="search" attribute="keywords"  html_code="class=\"searchtext\" id=\"searchtext\""}}
<input type="hidden" name="f_search_scope" value="content" />
{{ /search_form }}
</div>
