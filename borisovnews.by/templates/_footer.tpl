<div id="footer" class="clearfix">
{{ include file="_footer-columns.tpl" }}
<div class="footer-links">
<img src="/templates/images/footer-logo.gif" alt="Логотип Борисовские Новости" title="Борисовские Новости" />
<p>&copy; 2007-{{$smarty.now|date_format:"%Y"}} ЧПУП &laquo;Букас медиа-центр&raquo;</p>
<ul>
 {{ list_sections constraints="number greater 299 number smaller 360" }}
  <li><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></li>
 {{ /list_sections }}
  <li><a href="{{ uri options="template archive.tpl" }}">Архив</a></li>
  <li><a href="http://{{ $gimme->publication->site }}/ru/rss" class="rss-link">RSS</a></li> 
</ul>
<script type="text/javascript" src="//yandex.st/share/share.js" charset="utf-8"></script>
<div class="yashare-auto-init" data-yashareL10n="ru" data-yashareType="button" data-yashareQuickServices="yaru,vkontakte,facebook,twitter,odnoklassniki,moimir,lj,friendfeed,moikrug">
</div> 
</div>
{{ include file="_footer-counters.tpl" }}
</div>
{{* &@!#%&@#%$@, вставляйте куда положено или вообще сюда не лезьте!!! *}}