{{ include file="_html_head.tpl" }}
<body  id="article">
<a name="top"></a>
{{ include file="header.tpl" }}
<div id="wrap">
{{ include file="ticker.tpl" }}
<div id="meat">
<div id="meat-left">
<div class="meat-item"><div id="section-name"><p>Артыкулы па тэме &laquo;{{$gimme->topic->name}}&raquo;</p></div></div>

{{if $gimme->topic->defined}}
{{list_articles ignore_section="true" ignore_issue="true"}}
<div class="meat-item"><div class="meat-item-inner">
{{ if $gimme->article->has_image(2) }}<img class="meat-item-image" alt="{{$gimme->article->image2->description}}" src="{{ uri options="image 2" }}" width="230px" />{{/if}}
<h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
<div class="intro">{{ $gimme->article->intro }}{{ if $gimme->article->source_title == "Народная Воля" }}&nbsp;&nbsp;<img alt="НВ" src="/templates/images/mark_nv.png" />{{/if}}</div>
<div class="intro-tools">{{ $gimme->article->publish_date|camp_date_format:"%e %M %Y г." }} <span class="tools-time">{{ $gimme->article->publish_date|camp_date_format:"%H:%i" }}</span> | <a href="{{ uri options="article" }}">Каментарыі ({{ $gimme->article->comment_count }})</a></div>
</div>
</div><!-- /.meat-item -->
{{/list_articles}}
{{/if}}

</div><!-- /#meat-left -->
{{ include file="front-meat-right.tpl" }}
</div><!-- /#meat -->
{{ include file="meat-down.tpl" }}
{{ include file="footer.tpl" }}
</div><!-- /#wrap -->
</body>
</html>