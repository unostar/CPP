<nav class="nav-main">
  <ul>{{set_issue number="1"}}
    <li{{if $gimme->template->name == "arche/front.tpl"}} class="active"{{/if}}><a href="/">Галоўная</a></li>
{{* <li><a href="http://video.arche.by">ARCHE-Відэа</a></li> *}}
{{* <li><a href="http://pda.arche.by">PDA</a></li> *}}
{{list_sections constraints="number smaller_equal 110"}}
    <li{{if $gimme->section->number == $gimme->default_section->number}} class="active"{{/if}}><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{/list_sections}}
  </ul>
</nav><!-- .nav-main -->
