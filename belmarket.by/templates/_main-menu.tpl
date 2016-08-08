<div id="menu" class="clearfix">
   <div class="menu-content">
<div class="left-menu">
<p><a href="/">На главную</a>|
{{ set_issue number="1" }}
{{ set_section number="240" }}
{{ list_articles length="1" }}
<a href="{{ uri options="article" }}">О нас</a>|
{{ /list_articles }}
{{ set_section number="250" }}
<a href="{{ uri options="section" }}">Реклама</a>|
{{ set_section number="260" }}
<a href="{{ uri options="section" }}">Подписка</a>|
{{ set_section number="265" }}
{{ list_articles length="1" }}
<a href="{{ uri options="article" }}">Редакция</a>|
{{ /list_articles }}
{{if $gimme->default_issue->number=="1"}}{{set_current_issue}}{{else}}{{set_default_issue}}{{/if}}
<a target="smail" class="smail" href="http://www.belmarket.by/templates/phpscripts/smail/send.php">Обратная связь</a>
</p></div>
    <div class="search">
    {{ search_form submit_button="Искать" template="search.tpl"  button_html_code="class=\"button\"" }}
    {{ camp_edit object="search" attribute="keywords" html_code="type=\"text\" style=\"width:200px\"" }}
    {{ /search_form }}<p><a href="{{ uri options="template search.tpl" }}">расширенный</a></p>
    </div>
    <div class="right-menu">
    <p><a href="{{ uri options="template rss-feeds.tpl" }}">RSS</a>|
    {{ if $gimme->user->logged_in }}
    {{ set_section number="500" }}
    {{ list_articles length="1" }}
    {{ list_article_attachments }}
      {{ if $gimme->article->has_attachments }}
      <a href="{{ uri options="articleattachment" }}">PDF</a>|
      {{ /if }}
      {{ /list_article_attachments }}
    {{ /list_articles }}
    {{ else }}
    <a href="{{ uri options="template login.tpl" }}">PDF</a>|
    {{ /if }}
    {{ set_default_section }}
    {{if $gimme->default_issue->number=="1"}}{{set_current_issue}}{{else}}{{set_default_issue}}{{/if}}
    
   </p>
   
   </div>
  </div>
</div>
