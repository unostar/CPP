<p>Пожалуйста, используйте календарь для поиска материалов или PDF по дате публикации.</p>
<p>Если вам нужно что-то найти по определенным критериям, то используйте форму расширенного поиска, расположенную ниже.</p>
<div id="archive_search_form" class="m-main_comments">
<form class="b-addcomment" method="post" action="/by/page/archive" name="search_articles">
<input type="hidden" value="119" name="tpl" />
<input type="hidden" value=true name="f_search_articles" />
<fieldset>
  <legend>test</legend>
  <div class="b-addcomment_item"><label>Искать:</label><input type="text" value="{{$gimme->search_articles_action->search_phrase}}" name="f_search_keywords" /></div>
  <div class="b-addcomment_item"><label>Поиск по:</label>
    <span>
      <input type="radio" name="f_search_scope" value="content" checked="checked" /> тексту &nbsp;
      <input type="radio" name="f_search_scope" value="title" /> заголовку &nbsp;
      <input type="radio" name="f_search_scope" value="author" /> автору
    </span>
  </div>
  <div class="b-addcomment_item"><label>Выпуск:</label>{{camp_select object="search" attribute="issue" html_code="style=\"width:310px\""}}</div>
  <div class="b-addcomment_item date"><label>Дата:</label><input type="text" id="f_search_start_date" name="f_search_start_date" /><input type="text" id="f_search_end_date" name="f_search_end_date" /></div>
  <div class="b-addcomment_item"><input type="submit" class="button-greent1" name="f_search_articles" value="Искать" /></div>
</fieldset>
</form>
</div>