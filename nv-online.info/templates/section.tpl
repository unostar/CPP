{{ include file="_html_head.tpl" }}
<body  id="section">
<a name="top"></a>
{{ include file="header.tpl" }}
<div id="wrap">
{{ include file="ticker.tpl" }}
<div id="meat">
<div id="meat-left">
<div id="section-name"><p>{{ $gimme->default_section->name }}</p></div>
<div id="central-divide">
{{ include file="section-big-story.tpl" }}
{{ include file="section-more-stories.tpl" }}
</div><!-- /#central-divide -->
{{ include file="front-central-banner.tpl" }}
<div id="section-divide">
<div id="section-divide-left">
{{ include file="section-meat-items.tpl" }}
{{ include file="section-meat-more.tpl" }}
</div><!-- /#section-divide-left -->
<div id="section-divide-right">
{{ include file="section-right-most.tpl" }}
{{ include file="right-calendar.tpl" }}
{{ include file="right-poll.tpl" }}
</div><!-- /#section-divide-right -->
</div><!-- /#section-divide -->
</div><!-- /#meat-left -->
<div id="meat-right">
<img id="right-logo" alt="NV logo" src="/templates/images/logo-smallest.png"  />
{{ include file="right-news.tpl" }}
{{ include file="right-banner-2.tpl" }}
{{ include file="right-partners.tpl" }}
</div><!-- /#meat-right -->
</div><!-- /#meat -->
{{ include file="meat-down.tpl" }}
{{ include file="footer.tpl" }}
</div><!-- /#wrap -->
</body>
</html>