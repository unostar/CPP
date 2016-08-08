            <div id="advanced-search">
                <div class="inner">
                  <p>Для поиска статей на сайте используйте форму поиска по критериям. Для поиска PDF-файлов используйте архив PDF</p>    
{{ search_form template="search.tpl" submit_button="ПОИСК" button_html_code="id=\"adv-search-button\" class=\"rounded\"" }}                                
                      <div class="left">
                            <div class="form-element">
                <label>Искать по:</label>
                          <input class="radio" name="f_search_scope" value="content" checked="checked" type="radio">тексту 
                          <input class="radio" name="f_search_scope" value="title" type="radio">заголовку 
                          <input class="radio" name="f_search_scope" value="author" type="radio">автору
                            </div>
                            <div class="form-element">
                              <label for="adv-search">Искать:</label>
                {{ camp_edit object="search" attribute="keywords" html_code="id=\"adv-search\"" }}                       
                            </div>
                            <div class="form-element">
                <label for="adv-select">Выпуск:</label>
                {{ camp_select object="search" attribute="issue" html_code="id=\"adv-select\"" }}
                            </div>
              <div class="form-element">
                <label>Дата:</label>
                          <div class="g-left">с {{ camp_edit object="search" attribute="start_date" }}</div>
                          <div class="g-right">по {{ camp_edit object="search" attribute="end_date" }}</div>
                            </div>
                        </div><!-- /.left -->
                        <div class="right">
{{ /search_form }}
                        </div><!-- /.right -->
          </form>
                
                <div class="clear"></div>
                </div>
            </div><!-- /#advanced-search -->
