<div class="article">

{{ if $gimme->section->number == 1 }}

{{ local }}
{{ set_current_issue }}
{{ set_section number="1" }}
{{ list_articles order="bypublishdate desc" ignore_issue="true" }}

   {{ list_article_attachments }}

   {{ /list_article_attachments }}

{{ /list_articles }}
{{ /local }}

{{ /if }}

      </div>