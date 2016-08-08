<!-- Правая колонка -->
<div class="g-right">
{{if $gimme->url->uri_path == "/by/page/archive/"}}
  <div class="b-main"><div class="header-diag">Архив материалов</div><div id="ArticleArchive"></div></div>
  <div class="b-main"><div class="header-diag">Архив PDF</div><div id="PDFArchive"></div></div>
{{/if}}
<div class="b-main">{{include file="block-right-column-banner.tpl"}}</div>
<div class="b-main">{{include file="block-right-column-pdf.tpl"}}</div>
<div class="b-main">{{include file="block-right-column-weather.tpl"}}</div>
<div class="b-main">{{if $gimme->template->name=="front.tpl"}}{{include file="block-right-column-lawyer.tpl"}}{{/if}}{{include file="block-right-column-readers.tpl"}}</div>
<div class="b-main">{{if $gimme->template->name=="front.tpl"}}{{include file="block-right-column-minipoll.tpl"}}{{/if}}{{include file="block-right-column-poll.tpl"}}</div>
{{if $gimme->url->uri_path != "/by/page/archive/"}}
  <div class="b-main"><div class="header-diag">Архив</div><div id="ArchiveCalendar"></div></div>
{{/if}}
</div>
<!-- //правая колонка -->
