<div id="top-menu-bar">
<div class="chromestyle" id="chromemenu"><a href="/"><img class="logo" src="/templates/newspaper/images/logo-menu.png" alt="лого меню" width="92px" /></a>
{{ set_current_issue }}
{{ unset_topic }}
<ul>
{{ set_section number="1" }}
<li><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></li>
<li><a href="#" rel="dropmenu1">Рубрыкі</a></li>
<li><a href="{{ uri options="template newspaper/archive.tpl" }}">Архіў</a></li>
{{ set_section number="300" }}
<li><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></li>
{{ set_section number="320" }}
<li><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></li>
<li><a class="rss" href="{{ uri options="template newspaper/rss.tpl" }}">rss</a></li>
<li><a class="tt" href="http://twitter.com/tstyl">&nbsp;</a></li>
<li><a class="lj" href="http://t-styl.livejournal.com/">&nbsp;</a></li>
<li><a class="facebook" href="http://www.facebook.com/tstyl">&nbsp;</a></li>
{{*<li><a href="http://t-styl.mofuse.mobi" target="_blank">PDA</a></li>*}}
</ul>
{{set_default_issue}}
{{set_default_section}}
</div>
<!--1st drop down menu -->                                                   
<div id="dropmenu1" class="dropmenudiv">
{{set_current_issue}}{{list_sections constraints="number greater 9 number smaller 141"}}
<a href="{{ uri options="section"}}">{{ $gimme->section->name }}</a>
{{/list_sections}}{{set_default_issue}}
</div>
<script type="text/javascript">cssdropdown.startchrome("chromemenu")</script>

<div class="search-form">
  {{ search_form submit_button="пошук" template="newspaper/search.tpl"  button_html_code="class=\"button\"" }}
  {{ camp_edit object="search" attribute="keywords" html_code="style=\"height:20px;\"" }}
  <input type="hidden" name="f_search_scope" value="content" />
  {{ /search_form }}
</div>

</div>