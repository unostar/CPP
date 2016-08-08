{{* we'll use it in future *}}
{{* locked by Marina *}}
{{ local }}
{{ set_section number="1000" }}
<div class="listen-box">
  <div class="contents">
    <div class="play-button"><a href="{{ uri options="section"}}"><img src="/templates/newspaper/images/listen-button.gif" alt="" /></a></div>


{{ list_articles length="3" }}

{{ if $gimme->current_list->index == "1" }}
    <div class="player"> <a href="{{ uri options="article"}}"><img src="/templates/newspaper/images/listen.gif" alt=" " class="btn"/></a>
      <p class="main"><a href="{{ uri options="article"}}">{{ $gimme->article->name }}</a></p>
      <p class="date">{{ $gimme->article->publish_date|camp_date_format:"%d. %m. %Y" }} </p>
{{ if $gimme->article->has_attachments }}
{{ list_article_attachments }}
{{ if $gimme->attachment->extension == "mp3" }}
<div id="container-{{$gimme->article->number}}" class="player-container">
                <p><a href="http://www.macromedia.com/go/getflashplayer">Get the Flash Player</a> to see this player.</p>
              </div>
<script type="text/javascript">
		var s1 = new SWFObject("/templates/newspaper/javascript/mp/player.swf","ply","248","20","9","#FFFFFF");
		s1.addParam("allowfullscreen","false");
		s1.addParam("allowscriptaccess","always");
		s1.addParam('height','20');
s1.addParam("flashvars","file={{ uri options="articleattachment" }}");
		s1.write("container-{{$gimme->article->number}}");
	</script>
{{ /if }}
{{ /list_article_attachments }}
{{ /if }}

    </div>
{{ else }}
    <div class="player-rest"> <a href="{{ uri options="article"}}"><img src="/templates/newspaper/images/listen.gif" alt=" " class="btn"/></a>
      <p class="item">{{ $gimme->article->name }} <span>I  {{ $gimme->article->publish_date|camp_date_format:"%d. %m. %Y" }}</span></p>
    </div>
{{ /if }}
{{ /list_articles }}

    <a href="{{ uri options="section"}}"><img src="/templates/newspaper/images/listen-button-big.gif" alt=" " class="button" /></a>
    <!--p class="link"><a href="#">www.t-styl.info/radio</a></p-->
  </div>
</div>
{{ /local }}
{{* 
<img src="/templates/newspaper/images/banner-section.jpg" alt="банер Радые Твой стыль" width="285px" />*}}