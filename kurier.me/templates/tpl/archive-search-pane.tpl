<div class="search-pane">
  <h3 class="block-title"><span>{{$gimme->section->name}}</span></h3>
  <form class="search-articles" method="post" action="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/" name="search_articles">
    <input type="hidden" name="f_search_level" value="1" />
    <input type="hidden" name="f_search_articles" value="Искать в архиве" />
    <fieldset>
      <label>Искать:</label>
      <input type="text" value="{{$gimme->search_articles_action->search_phrase}}" name="f_search_keywords" />
      <label class="all-words"><input type="checkbox" name="f_match_all" /> найти все слова</label>
    </fieldset>
    <fieldset class="place">
      <label>Поиск по:</label>
      <ul>
        <li><label><input type="radio" name="f_search_scope" value="content" checked="checked" /> Тексту</label></li>
        <li><label><input type="radio" name="f_search_scope" value="title" /> Заголовку</label></li>
        <li><label><input type="radio" name="f_search_scope" value="author" /> Автору</label></li>
      </ul>
    </fieldset>
    <fieldset>
      <label>Рубрика:</label>
      {{camp_select object="search" attribute="section"}}
    </fieldset>
    <fieldset class="date">
      <label>Дата:</label>
      <ul>
        <li>
          <label for="f_search_start_date">c</label>
          <input type="text" id="f_search_start_date" name="f_search_start_date" />
        </li>
        <li>
          <label for="f_search_end_date">по</label>
          <input type="text" id="f_search_end_date" name="f_search_end_date" />
        </li>
      </ul>
    </fieldset>
    <p class="submit"><button type="submit" name="f_search_articles">Искать в архиве</button></p>
  </form><!-- .articles-search -->
  <div>
    {{calendarcpp container="SearchPaneCalendar" style="calendar" settings="changeMonth: true, changeYear: true" url="/`$gimme->language->code`/page/archive/?action=calendar" article_date_style="" clickable_dates="articles"}}
{{*
    <p>
      <a href="" class="button">Видео-архив</a>
      <a href="" class="button">Фото-архив</a>
    </p>
*}}
  </div>
</div><!-- .search-pane -->
