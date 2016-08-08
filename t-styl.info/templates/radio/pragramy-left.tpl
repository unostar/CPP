<div class="section-left">
	   <h1>Праграмы</h1>
<div class="section-left-list">
<div class="archive-div">
{{ set_default_issue }}
{{ list_sections constraints="number greater 9 number smaller 300" }}
{{ if $gimme->section->number == "110" }}
{{ else }}
<p class="archive-title" style="clear:both;">
<img src="/templates/radio/images/program_{{$gimme->section->number}}.gif" alt="{{$gimme->section->name}}" style="float:left;clear:left;border:none;margin:0 10px 10px 0;" />
<a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a>
</p>
<br/>
{{ /if }}
{{ /list_sections }}
</div>
</div>
</div>