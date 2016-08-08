<link href="/templates/js/scrollable/scrollable.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/templates/js/scrollable/lightbox.js"></script>
<script type="text/javascript" src="/templates/js/scrollable/jquery.scrollable-1.0.2.min.js"></script>
{{set_issue number="1"}}
{{set_section number="6"}}
<div id="galereja">
<p id="galtitle"><a href="http://picasaweb.google.com/regionnewsby" target="_blank">Галерэя</a></p>
<div id="galereja-inner">
<div class="items">
{{list_articles constraints="type is web_album_link" order="bySectionOrder asc"}}
<div class="galereja-item">
<a class="lightbox" rel="lightbox" href="{{$gimme->article->fullsize_link}}"><img src="{{$gimme->article->thumb_link}}" /></a>
<a href="{{$gimme->article->album_link}}" target="_blank">{{$gimme->article->name}}</a>
</div><!-- /.galereja-item -->
{{/list_articles}}
</div><!-- /.items -->
</div><!-- /#galereja-inner -->
<a class="prev"></a>
<a class="next"></a>
</div><!-- /#galereja -->
{{set_default_issue}}
{{set_default_section}}
<script type="text/javascript">$(function(){$("#galereja-inner").scrollable({size:4,interval:0,speed:800});});</script>