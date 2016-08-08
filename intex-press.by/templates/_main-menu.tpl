{{unset_topic}}
<div id="main-menu" class="clearfix">
<p>Барановичская независимая газета</p>
<ul class="menu clearfix" style="margin:-18px 0 0 0;">
<li><a href="/">Главная</a></li>
{{ list_sections constraints="number greater 9 number smaller 61"}}
<li><a href="{{uri options="section"}}" {{if $gimme->default_section == $gimme->section}}class="current"{{/if}}>{{$gimme->section->name}}</a></li>
{{/list_sections}}
</ul>
</div>
