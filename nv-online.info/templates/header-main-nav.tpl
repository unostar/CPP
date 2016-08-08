<div id="main-nav">
<ul>
<li><a href="http://m.nv-online.info/">PDA-версія</a></li>
{{local}}
{{set_current_issue}}
{{ list_sections constraints="number greater 11 number smaller 206" }}
<li><a href="{{uri options="section"}}" {{if $gimme->current_list->at_end}}class="last"{{/if}}>{{ $gimme->section->name }}</a></li>
{{ /list_sections }}
{{/local}}
</ul>
</div><!-- /#main-nav -->