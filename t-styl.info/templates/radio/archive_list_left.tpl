<div class="section-left">
	   <h1>Архiў cайта - {{ $gimme->issue->name }} <br/> ад {{ $gimme->issue->publish_date|camp_date_format:"%d %M %Y" }}</h1>
<div class="section-left-list">

{{ list_sections order="bypublishdate desc" constraints="number greater 5 number smaller 121" }}
{{ assign var="t_section" value="0" }}
{{ list_articles order="bypublishdate desc" }}
{{ if $gimme->current_list->at_beginning }}
{{ assign var="t_section" value="1" }}
{{ /if }}
{{ /list_articles }}

{{ if $t_section == "1" }}
<div class="archive-div">
<p class="archive-title" style="margin-bottom:10px;">{{ $gimme->section->name }}</p>
{{ list_articles order="bypublishdate desc" }}
<p><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
{{ /list_articles }}
 </div>
{{ /if}}
{{ /list_sections }}


</div>
</div>