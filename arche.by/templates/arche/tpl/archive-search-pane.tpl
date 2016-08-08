<div class="search-pane">
<form class="search-articles" method="post" action="/by/page/archive/" name="search_articles">
  <input type="hidden" value="1" name="f_search_level" />
  <input type="hidden" value="Шукаць у архіве" name="f_search_articles" />
  <fieldset>
    <label>Шукаць:</label>
    <input type="text" value="{{$gimme->search_articles_action->search_phrase}}" name="f_search_keywords" />
    <label class="all-words">па ўсіх словах <input type="checkbox" checked="checked" name="f_match_all" /></label>
  </fieldset>
  <fieldset class="place">
    <label>Пошук па:</label>
    <ul>
      <li><label><input type="radio" name="f_search_scope" value="content" checked="checked" /> тэксьце</label></li>
      <li><label><input type="radio" name="f_search_scope" value="title" /> назьве</label></li>
      <li><label><input type="radio" name="f_search_scope" value="author" /> аўтару</label></li>
    </ul>
  </fieldset>
  <fieldset>
    <label>Выпуск:</label>
    {{camp_select object="search" attribute="issue"}}
  </fieldset>
  <fieldset>
    <label>Рубрыка:</label>
    {{camp_select object="search" attribute="section"}}
  </fieldset>
  <fieldset class="date">
    <label>Дата:</label>
    <ul>
      <li>
        <label for="f_search_start_date">з</label>
        <input type="text" id="f_search_start_date" name="f_search_start_date" />
      </li>
      <li>
        <label for="f_search_end_date">па</label>
        <input type="text" id="f_search_end_date" name="f_search_end_date" />
      </li>
    </ul>
  </fieldset>
  <p class="submit"><button type="submit" name="f_search_articles">Шукаць у архіве</button></p>
</form><!-- .articles-search -->

{{ calendarcpp container="ArchiveCalendar" style="calendar" url="/by/page/archive/?action=calendar" article_date_style="ui-state-highlight active" clickable_dates="articles" }}

</div><!-- .search-pane -->
