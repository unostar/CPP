<div class="b-bheader_blue"><span><a href="/ru/page/archive/"><b>Архив сайта</b></a></span></div>
<div class="b-archive_search">
<span class="b-subheader">Поиск по архиву</span>
{{ search_form template="archive-search-results.tpl" submit_button="Искать" button_html_code="style=\"display:none\" disabled=\"disabled\"" }}
<input type="hidden" name="f_search_articles" value="Искать" />
<table class="g-none">
  <tr>
    <td>Искать: </td>
    <td><input type="text" style="width: 230px;" value="{{$gimme->search_articles_action->search_phrase}}" maxlength="255" name="f_search_keywords" /> <label>по всем словам <input type="checkbox" name="f_match_all" /></label></td>
  </tr>
  <tr>
    <td>Поиск по: </td>
    <td><label><input type="radio" name="f_search_scope" value="content" checked="checked" /> тексту</label> <label><input type="radio" name="f_search_scope" value="title" /> заголовку</label> <label><input type="radio" name="f_search_scope" value="author" /> автору</label></td>
  </tr>
  <tr>
    <td>Выпуск:</td>
    <td>{{camp_select object="search" attribute="issue" html_code="style=\"width:373px\""}}</td>
  </tr>
  <tr>
    <td>Дата:</td>
    <td><input type="text" maxlength="19" size="19" id="f_search_start_date" name="f_search_start_date" style="width:104px;margin-right:9px" /><input type="text" maxlength="19" size="19" id="f_search_end_date" name="f_search_end_date" style="margin:0 9px;width:104px;" /></td>
  </tr>
  <tr>
    <td></td>
    <td><input type="submit" value="Искать" class="submit-t1" /></td>
  </tr>
</table>
{{/search_form}}
</div>
