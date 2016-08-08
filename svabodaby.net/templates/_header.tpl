{{unset_topic}}
 <div class="header-column-1">
 
  <div class="logo"><a href="/" title="ТУТ І ЦЯПЕР (www.svabodaby.net)"><img src="/templates/img/header-logo.gif" alt="ТУТ І ЦЯПЕР (www.svabodaby.net)" /></a></div>
  <div class="links">
    <a href="http://{{$gimme->publication->site}}/templates/php/mail/send_newsletter.php" class="popup mailing_list">Падпiсацца на рассылку</a>
    <a href="http://{{$gimme->publication->site}}/templates/php/mail/send_to_editor.php" class="popup send_letter">Лiст рэдактару</a>
  </div>
  <div class="search">
    {{ search_form template="search.tpl" submit_button="Шукаць" button_html_code="class=\"button\"" }}
      <input type="text" class="search-text" name="f_search_keywords" maxlength="255" value="Пошук на сайце" onfocus="if(this.value=='Пошук на сайце')this.value=''" onblur="if(!this.value)this.value='Пошук на сайце'" />
    {{ /search_form }}
  </div>
</div>

<div class="header-column-2">
  <h4>{{$smarty.now|camp_date_format:"%e %M"}}</h4>
  <div id="this_day">
{{set_section number="100"}}
{{assign var="today" value=$smarty.now|camp_date_format:"%Y-%m-%d" }}
{{ list_articles constraints="publish_date is $today" ignore_issue="true" order="byPopularity asc" }}
  <div{{if $gimme->current_list->count < 2}} style="display:block;"{{/if}}>{{* no rotation if only one article *}}
  <img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" title="{{$gimme->article->image1->description}}" {{if !$gimme->article->has_image(1)}}style="width:0 !important;"{{/if}}/>{{* do not ruin if no image attached *}}
  <p>{{$gimme->article->intro}}</p>
  </div>
{{assign var="previous_list" value=true}}
{{/list_articles}}
{{if !$previous_list}}{{php}}include ('/var/www/xml-forest/header_weather.html');{{/php}}{{/if}}{{* show at least weather if no content *}}
</div>
{{set_default_section}}
</div>

<div class="main-menu">
<ul class="menu">
  <li><a {{if $gimme->template->name == "front.tpl" }}class="selected"{{else}}href="/"{{/if}}>Тытульная</a></li>
{{list_sections constraints="number greater 9 number smaller 79"}}
  <li><a class="{{if $gimme->current_list->at_end}}noborder {{/if}}{{if $gimme->section->number == $gimme->default_section->number}}selected" {{if $gimme->default_topic->defined || $gimme->default_article->defined}} href="{{uri options="section"}}"{{/if}}{{else}}" href="{{uri options="section"}}"{{/if}}>{{$gimme->section->name}}</a></li>
{{/list_sections}}
  <li class="right">
    <a href="{{uri options="template archive.tpl"}}">Архiў</a>
    <a class="rss" target="_blank" href="http://{{ $gimme->publication->site }}/feed/index.rss">RSS</a>
  </li>
</ul>
<div class="submenu">
{{if $gimme->section->defined && $gimme->section->number < 100}}
{{assign var="subtopic" value=$gimme->section->name}}
{{set_topic name="$subtopic:by"}}
  <ul class="submenu">
{{list_subtopics}}
  <li><a class="{{if $gimme->current_list->at_end}}noborder {{/if}}{{if $gimme->topic == $gimme->default_topic || $gimme->default_article->has_topic($gimme->topic->identifier)}}selected" {{else}}" href="{{uripath}}?tpid={{$gimme->topic->identifier}}"{{/if}}>{{$gimme->topic->name}}</a></li>
{{/list_subtopics}}
  </ul>
{{unset_topic}}
{{/if}}
</div>
</div>