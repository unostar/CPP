<div id="search-box">
{{ search_form template="search.tpl" submit_button="Шукаць" html_code="class=\"search-form\"" button_html_code="class=\"search-button\"" }}
      <a href="{{ uri options="template search.tpl" }}">Пашыраны пошук</a>
      {{ camp_edit object="search" attribute="keywords" html_code="class=\"search-text\" value=\"Пошук...\"" }}
{{ /search_form }}
   <span class="hide">&nbsp;</span>
</div><!-- /#search-box -->