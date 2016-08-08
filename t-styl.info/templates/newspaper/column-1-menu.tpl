<ul class="links-menu">
  <li class="top"><div class="title">ЧЫТАЙ</div></li>
  {{ local }}
  {{ set_current_issue }}
  {{ list_sections constraints="number greater 9 number smaller 121" }}
  <li {{ if $gimme->default_section == $gimme->section }}id="sel_menu"{{/if}}><a href="{{ uri options="section"}}">{{ $gimme->section->name }}</a></li>
  {{ /list_sections }}
  {{ /local }}
  <li class="bottom"></li>
</ul>