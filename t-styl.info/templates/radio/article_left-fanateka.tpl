{{ set_default_section }}
{{ set_default_article }}
<div class="article-left">
<div class="article-left-content">

<h1 class="section-name"><a href="{{ uri options="section"}}">{{ $gimme->section->name }}</a></h1>
{{ if $gimme->article->has_image(2) }}
<img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" class="article-tools gallery" style="margin:35px 20px 0 0;" />
{{ /if }}
<h2>{{ $gimme->article->name }}</h2>
<p class="date">{{ if $gimme->article->author->name == "" }}{{ else }}{{ $gimme->article->author->name }}<span>I</span>{{/if}}{{ $gimme->article->publish_date|camp_date_format:"%d %m %Y" }}</p>
<p class="intro">{{ $gimme->article->Intro }}</p>
<p>{{ $gimme->article->Full_text }}</p>

{{ if $gimme->article->has_attachments }}
<div class="article-tools" style="width:auto;">
{{ list_article_attachments }}
<p class="tools" style="width:auto;">Спампаваць: <a href="{{ uri options="articleAttachment" }}">{{$gimme->attachment->description}} ({{$gimme->attachment->size_kb}}Kb)</a></p>
{{ if $gimme->attachment->extension == "mp3" }}
<div id="container-{{$gimme->article->number}}" class="player-container"><p><a href="http://www.macromedia.com/go/getflashplayer">Get the Flash Player</a> to see this player.</p></div>
<script type="text/javascript">
var s1 = new SWFObject("/templates/newspaper/javascript/mp/player.swf","ply","235","20","9","#FFFFFF");
s1.addParam("allowfullscreen","false");
s1.addParam("allowscriptaccess","always");
s1.addParam('height','20');
s1.addParam("flashvars","file={{ uri options="articleattachment" }}");
s1.write("container-{{$gimme->article->number}}");
</script>
{{ /if }}
</div>
{{ /list_article_attachments }}
{{ /if }}

{{if $gimme->article->Youtube_url}}
<p align="center" style="margin:20px auto;"><object type="application/x-shockwave-flash" data="{{$gimme->article->Youtube_url}}" width="480" height="295"><param name="movie" value="{{$gimme->article->Youtube_url}}" /><param name="FlashVars" value="playerMode=embedded" /><param name="wmode" value="transparent" /></object></p>
{{/if}}

{{ include file="radio/article_comments.tpl" }}
</div>
</div>
