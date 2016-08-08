{{set_issue number="1"}}
<div class="b-main">
  <span class="header-green">спецпроекты газеты “Ганцавіцкі час”</span>
  <ul class="list-spec">
{{list_sections constraints="number greater_equal 100 number smaller_equal 120"}}
    <li><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></li>
{{/list_sections}}
  </ul>
</div>
