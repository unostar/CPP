<!-- Подошва -->
<div class="l-footer">
  <div class="b-f-menu">
    <ul>{{if $gimme->issue->number==1}}{{set_current_issue}}{{/if}}
{{list_sections constraints="number smaller 100"}}
      <li><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></li>
{{/list_sections}}
    </ul>
    <ul>
{{list_sections constraints="number greater_equal 100 number smaller 200"}}
      <li><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></li>
{{/list_sections}}
    </ul>
    <ul>{{local}}{{set_issue number="1"}}
{{list_sections constraints="number greater_equal 300 number smaller 350"}}
      <li><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></li>
{{/list_sections}}{{/local}}
      <li><a href="{{uri options="template contact_form.tpl"}}" class="contact_form_link">Обратная связь</a></li>
    </ul>
  </div>
  <div class="b-f-search m-f-search">
{{search_form template="archive.tpl" submit_button="" button_html_code="class=\"b-f-search_submit g-iblock\""}}
    Поиск на www.bk-brest.by : <input type="text" class="text" name="f_search_keywords" maxlength="255" value="" />
{{/search_form}}
    <span class="b-f-search_razd">|</span> <a href="/ru/page/archive/">расширенный поиск</a>
  </div>
  <span class="b-f-copy">&copy; "Брестский курьер", {{$smarty.now|date_format:"%Y"}} <br /> Все права защищены.</span>
  <b class="g-bg b-brcourier"></b>
{{include file="_counters.tpl"}}
</div>
<!-- //подошва -->
