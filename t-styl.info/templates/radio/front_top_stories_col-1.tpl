      <div class="col-1">
        <p class="home-title">Слухай новае</p>
{{ list_articles length="1" constraints="OnFrontPage is on OnSection is on" order="bypublishdate desc" }}
{{ if $gimme->article->has_image(2) }}
        <img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" width="160px" />
{{ /if }}
        <p class="title"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
        <p class="date">{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }}</p>
        {{ $gimme->article->intro }}
        <p class="comments">{{ if $gimme->article->comments_enabled }}
{{ assign var="flag1" value="0" }}
<a href="{{ uripath options="article" }}#add_comment">Каментарыi {{ list_article_comments order="bydate asc"}}
   		{{ if $gimme->current_list->at_beginning }} 
        ({{ $gimme->current_list->count }})
        {{ assign var="flag1" value="1" }}
        {{ /if }}
        {{ /list_article_comments }}
        {{ if $flag1 == "0" }}(0){{ /if }}</a>{{ /if }}</p>

{{ if $gimme->article->has_attachments }}
{{ list_article_attachments }}
{{ if $gimme->attachment->extension == "mp3" }}
<div id="container-{{$gimme->article->number}}" class="player-container">
                <p><a href="http://www.macromedia.com/go/getflashplayer">Get the Flash Player</a> to see this player.</p>
              </div>
<script type="text/javascript">
		var s1 = new SWFObject("/templates/newspaper/javascript/mp/player.swf","ply","235","20","9","#FFFFFF");
		s1.addParam("allowfullscreen","false");
		s1.addParam("allowscriptaccess","always");
		s1.addParam('height','20');
s1.addParam("flashvars","file={{ uri options="articleattachment" }}");
		s1.write("container-{{$gimme->article->number}}");
	</script>
{{ /if }}
<p class="download">спампаваць: 
<a href="{{ uri options="articleAttachment" }}"><strong>{{ $gimme->attachment->file_name }}, ({{ $gimme->attachment->size_kb }}KB)</strong></a></p>
{{ /list_article_attachments }}
{{ /if }}

{{ /list_articles }}
      </div>