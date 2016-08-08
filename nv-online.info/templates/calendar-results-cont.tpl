{{ dynamic }}
{{ assign var="post" value=$smarty.get.date }}
<div id="section-name" style="border-bottom: none"><p>Архiў cайта - {{ $post|camp_date_format:"%e %M %Y" }}</p></div>

{{ list_sections }}
  {{ list_articles order="bypublishdate desc" ignore_issue="true" constraints="publish_date is $post" }}
  {{ if $gimme->current_articles_list->at_beginning }}
    {{ assign var="check" value="1" }}
    <div class="meat-item">
      <div class="meat-item-inner">

      <div class="meat-item-uphead"><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></div>
 
  {{ /if }}

{{if $gimme->section->number == 310}}
  {{list_article_attachments length="1"}}
    <h3><a href="{{uri options="articleAttachment"}}"><img src="/templates/images/fifths-pdf.gif" alt="PDF" height="12" />&nbsp;{{ $gimme->article->name }}</a></h3> 
  {{/list_article_attachments}}
{{else}}
  <h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3> 
  <div class="intro-tools">{{ $gimme->article->publish_date|camp_date_format:"%e %M %Y г." }} I   <a href="{{ uri options="article" }}">Камэнтары ({{ $gimme->article->comment_count }})</a></div>
{{/if}}

  {{ if $gimme->current_articles_list->at_end }}
    </div>
    </div>
  {{ /if }}
  {{ /list_articles }}
{{ /list_sections }}

{{ if $check != "1" }}
    <div class="meat-item">
      <div class="meat-item-inner">
<p><strong>У архіве няма матэрыялаў па абранай Вамі даце. Калі ласка, абярыце іншую дату!</strong></p>
      </div>
    </div>
{{ /if }}             


<div class="meat-item">
  <div class="meat-item-inner">
    {{ include file="search-advanced.tpl" }}

  </div>
</div>
{{ /dynamic }}