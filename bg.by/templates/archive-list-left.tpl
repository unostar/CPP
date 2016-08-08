{{ list_sections order="bypublishdate desc" constraints="number greater 5 number smaller 301" }}
{{ assign var="t_section" value="0" }}
{{ list_articles order="bypublishdate desc" }}
{{ if $gimme->current_list->at_beginning }}
{{ assign var="t_section" value="1" }}
{{ /if }}
{{ /list_articles }}

{{ if $t_section == "1" }}
<div class="title">{{ $gimme->section->name }}</div>
<div class="rest-news">
{{ list_articles order="bypublishdate desc" }}
<h3 class="section-block"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</h3>
{{ /list_articles }}
</div>
{{ /if}}
{{ /list_sections }}