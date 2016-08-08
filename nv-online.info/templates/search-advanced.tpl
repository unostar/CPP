{{ search_form template="search.tpl" submit_button="Шукаць" html_code="id=\"advanced-search\"" button_html_code="id=\"advasearch\"" }}
<input type="hidden" name="f_search_scope" value="index" />
<fieldset>
   <div class="form-item">
      <label for="SearchKeyword">Шукаць:</label>
     {{ camp_edit object="search" attribute="keywords" html_code="class=\"wider\"" }}
   </div>
              
   <div class="form-item">
      <label for="matchAll">&nbsp;</label>{{ camp_select object="search" attribute="mode" }}па усіх словах
   </div>
                    
   <div class="form-item">
      <label for="SearchCriteria">Крытэрыі пошуку:</label>
      <div id="SearchCriteria">
      <input type="radio" name="f_search_scope" value="title" />&nbsp;назва
      <input type="radio" name="f_search_scope" value="content" />&nbsp;тэкст
      <input type="radio" name="f_search_scope" value="author" />&nbsp;аутар
      </div>
   </div>

   <div class="form-item">
      <label for="SearchIssue">Выданне:</label>
     {{ camp_select object="search" attribute="issue" }}</p>
   </div>
   <div class="form-item">
      <label for="SearchSection">Рубрыка:</label>
      {{ camp_select object="search" attribute="section" html_code="class=\"searchInputText\" id=\"SearchSection\"" }}<br />
   </div>

   <div class="form-item">
      <label for="SearchDate">Дата:</label>
      <div id="SearchDate">
      {{ camp_edit object="search" attribute="start_date" }}
      {{* <span>&nbsp;&nbsp;-&nbsp;&nbsp;</span> *}}
      {{ camp_edit object="search" attribute="end_date" }}
      </div><!-- /#SearchDate -->
   </div>
</fieldset>
                
<div class="form-item">
   {{ /search_form }}
</div>