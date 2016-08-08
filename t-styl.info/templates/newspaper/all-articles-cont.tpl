<div class="section-column-2 clearfix">
  <div class="column-2-content">
  {{ set_current_issue }}
  <h2>Ўсе артыкулы "Штотыдневiка" - {{ $gimme->issue->name }} ад {{ $gimme->issue->publish_date|camp_date_format:"%d %M %Y" }}</h2><br/>

{{ list_sections order="bypublishdate desc" constraints="number greater 5 number smaller 121" }}
{{ assign var="t_section" value="0" }}
{{ list_articles order="bypublishdate desc" }}
{{ if $gimme->current_list->at_beginning }}
{{ assign var="t_section" value="1" }}
{{ /if }}
{{ /list_articles }}

{{ if $t_section == "1" }}
<div class="article-comments" style="padding:20px 0 0 0;border-top:1px solid #ebebeb; margin:10px 0 0 0;">
<h3 class="comment-title" style="margin-bottom:10px;">{{ $gimme->section->name }}</h3>
{{ list_articles order="bypublishdate desc" }}
<p><span class="tb">&gt;</span><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
{{ /list_articles }}
 </div>
{{ /if}}
{{ /list_sections }}

  
 </div>
</div>