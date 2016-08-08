<nav class="nav-sub">
  <h3>Відэа:</h3>
  <ul>
{{local}}
{{set_publication identifier="4"}}
{{set_issue="1"}}
{{list_sections constraints="number smaller_equal 100"}}
    <li{{if $gimme->current_list->at_end}} class="last"{{/if}}><a href="http://{{$gimme->publication->site}}/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{/list_sections}}
{{/local}}
  </ul>
</nav><!-- .nav-sub -->
