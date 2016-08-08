<div class="section-column-2 clearfix">
  <div class="column-2-content">
   <div class="main-box">

{{* because of implementation of calendar i have found this only way to do it properly *}}
{{ list_issues }}
{{ if $gimme->issue->publish_date|camp_date_format:"%Y-%c-%e" == $smarty.post.date1 }}
        {{ assign var="check" value="1" }}
        {{ assign var="issue" value=$gimme->issue->number }}
{{/if}}

{{ /list_issues }}

{{ local }}
{{ set_issue number=$issue }}
  <h2>Архiў cайта - {{ $gimme->issue->name }} ад {{ $gimme->issue->publish_date|camp_date_format:"%d %M %Y" }}</h2><br/>
{{ if $check == "1" }}
{{ list_sections order="bypublishdate desc" constraints="number smaller 121" }}
{{ assign var="t_section" value="0" }}
{{ list_articles order="bypublishdate desc" }}
{{ if $gimme->current_list->at_beginning }}
{{ assign var="t_section" value="1" }}
{{ /if }}
{{ /list_articles }}

{{ if $t_section == "1" }}
<div class="article-comments" style="padding:20px 0 0 0;border-top:1px solid #ebebeb; margin:10px 0 0 0;"><h3 class="comment-title" style="margin-bottom:10px;">{{ $gimme->section->name }}</h3>
{{ list_articles order="bypublishdate desc" }}
<p><span class="tb">&gt;</span><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
{{ /list_articles }}
</div>
{{ /if}}
{{ /list_sections }}
{{ else }}
<p>У архіве няма матэрыялаў па выбранай Вамі даце. Калі ласка, абярыце іншую дату.</p>
{{ /if }}
{{ /local }}

  </div>
 </div>
</div>