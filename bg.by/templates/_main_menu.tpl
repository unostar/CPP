<div id="main-menu">
<ul>
    <li{{ if $gimme->default_section->defined || $gimme->template->name == "rss.tpl" || $gimme->template->name == "archive.tpl" || $gimme->template->name == "archive-calendar.tpl" }}{{ else}} class="current"{{/if}}><a href="/"><span>Главная</span></a></li>
{{list_sections constraints="number greater 9 number smaller 99"}}
    <li {{ if $gimme->default_section == $gimme->section }}class="current"{{/if}}><a href="{{ uri options="section"}}"><span>{{ $gimme->section->name}}</span></a></li>
{{/list_sections}}
{{list_sections constraints="number is 1"}}
    <li {{if $gimme->section->number == $gimme->default_section->number}}class="current"{{/if}}><a href="{{uri options="section"}}"><span class="last">Архив</span></a></li>
{{/list_sections}}
  </ul>
</div>