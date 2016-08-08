{{ include file="_html_head.tpl" }}
<body  id="article">
<a name="top"></a>
{{ include file="header.tpl" }}
<div id="wrap">
{{ include file="ticker.tpl" }}
<div id="meat">
<div id="meat-left">
<noindex>
<div class="meat-item"><div id="section-name"><p>Навіны RSS - У Беларусі</p></div></div>
{{php}}
include ('/var/www/xml-forest/NV-rss-import-radio_svaboda-full.html');
include ('/var/www/xml-forest/NV-rss-import-nasha_niva-full.html');
include ('/var/www/xml-forest/NV-rss-import-charter97-full.html');
include ('/var/www/xml-forest/NV-rss-import-partizan-full.html');
include ('/var/www/xml-forest/NV-rss-import-euroradio-full.html');
{{/php}}
<div class="meat-item"><div id="section-name"><p>Навіны RSS - У свеце</p></div></div>
{{php}}
include ('/var/www/xml-forest/NV-rss-import-yandex_world-full.html');
{{/php}}
</noindex>
</div><!-- /#meat-left -->
{{ include file="front-meat-right.tpl" }}
</div><!-- /#meat -->
{{ include file="meat-down.tpl" }}
{{ include file="footer.tpl" }}
</div><!-- /#wrap -->
</body>
</html>