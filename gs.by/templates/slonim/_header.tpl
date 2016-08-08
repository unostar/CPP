<div id="header" class="clearfix">
    <div class="search-box">
{{ include file="slonim/_search-box.tpl" }}
      <span class="date">{{ $smarty.now|camp_date_format:"%d %M %Y %W, %H:%i" }}</span>
      <span class="date" style="padding-left:100px;font-weight:bold;font-size:14px;">{{ $gimme->issue->name }}</span>
      </div>
    <div class="addon-box">
      <p>участвуйте в работе сайта...</p>
      <div class="addon-c1">
        <p><a href="http://{{ $gimme->publication->site }}/templates/slonim/phpscripts/formmail/send.php" class="contact" target="contact">Присылайте свои рассказы</a></p>
        <p><a href="http://{{ $gimme->publication->site }}/templates/slonim/phpscripts/formmail/send.php" class="contact" target="contact">Присылайте фотографии</a></p>
      </div>
      <div class="addon-c2">
        <p><a href="http://{{ $gimme->publication->site }}/templates/slonim/phpscripts/formmail/send.php" class="contact" target="contact">Напишите нам</a></p>
        <p><a href="http://forum.gs.by" target="_blank">Общайтесь в форуме</a></p>
      </div>
    </div>
    <a href="/"><img src="/templates/slonim/images/logo.gif" alt="logo" border="0" class="logo"/></a>
{{ include file="slonim/_main-menu.tpl" }}
    <div class="banners-top clearfix">
      {{ include file="slonim/banner-header.tpl" }}
      <div class="extra-box">
        <div class="extra-c1">
          {{ list_sections constraints="number is 550" }}
          <p><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></p>
          {{ /list_sections }}
          {{ list_sections constraints="number greater 499 number smaller 511" }}
          <p><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></p>
          {{ /list_sections }}
          <p><a href="{{ uri options="template slonim/archive.tpl" }}">Архив</a></p>
                    
        </div>
        <div class="extra-c2">
{{ list_sections constraints="number greater 519 number smaller 531" }}
          <p><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></p>
{{ /list_sections }}
          <p><a href="{{ uri options="template slonim/archive-pdf.tpl" }}">Архив PDF</a></p>
{{ set_issue number="1" }}
{{ list_sections constraints="number is 170" }}
          <p><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></p>
{{ /list_sections }}
{{set_default_issue}}
{{set_default_section}}
{{set_default_article}}
        </div>
      </div>
    </div>
  </div>