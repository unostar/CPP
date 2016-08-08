{{ set_section number="1000" }}
<div class="section-column-2 clearfix">
 <div class="column-2-content">
{{ if $gimme->topic->name=="" }}
{{ else }}
<h2 class="other" style="padding:0;margin:0;"><span style="font-size:9px;">&lt;&lt;</span> {{ $gimme->topic->name }} <span style="font-size:9px;">&gt;&gt;</span></h2>
{{ /if }}
{{ list_articles length="1" }}
  <div class="main-box">

    <h3 class="day"><a href="{{ uri options="article" }}">{{ $gimme->article->name 
}}</a></h3>
{{ if $gimme->article->has_image(2) }}
<img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" class="day-img" />
{{ /if }}

    {{ assign var="n_article" value=$gimme->article->number }}
    
    <div class="s-intro">{{ $gimme->article->Intro }}</div>
{{* media player implementation *}}
{{ if $gimme->article->has_attachments }}
{{ list_article_attachments }}
{{ if $gimme->attachment->extension == "mp3" }}
<div id="container-{{$gimme->article->number}}" class="player-container">
                <p><a href="http://www.macromedia.com/go/getflashplayer">Get the Flash 

Player</a> to see this player.</p>
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
{{* end media player implementation *}}

  </div>
{{ /list_articles }}
{{ list_articles length="9" ignore_issue="true" }}
{{ if $gimme->current_list->at_beginning && $gimme->current_list->count >1 }}
<h2 class="other">Iншыя Артыкулы рубрыкi <span style="font-size:9px;">&lt;&lt;</span> {{ $gimme->section->name }} <span style="font-size:9px;">&gt;&gt;</span></h2>
{{ /if }}

{{ if ($gimme->article->number == $n_article ) }}
{{ else }}
  <div class="article-box">
  {{ if $gimme->article->has_image(1) }}
<img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description }}" 

width="120" />
{{ /if }}
  <h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
  {{ if $gimme->article->author->name != "" }}
        <p class="author">Піша {{ $gimme->article->author->name }}</p>
   {{ /if }}
  {{ $gimme->article->Intro }}
{{* media player implementation *}}
{{ if $gimme->article->has_attachments }}
{{ list_article_attachments }}
{{ if $gimme->attachment->extension == "mp3" }}
<div id="container-{{$gimme->article->number}}" class="player-container">
                <p><a href="http://www.macromedia.com/go/getflashplayer">Get the Flash 

Player</a> to see this player.</p>
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
{{* end media player implementation *}}

{{ if $gimme->article->comments_enabled }}<p>
<a class="smore" href="{{ uri options="article" }}#add_comment">Каментары {{ 

list_article_comments order="bydate asc"}}
  {{ if $gimme->current_list->at_beginning }} ({{ $gimme->current_list->count }}) {{ /if }}
{{ /list_article_comments }}
{{ if $gimme->prev_list_empty }}(0){{ /if }}</a>
{{ /if }}
<span class="divider">|</span><a class="smore" href="{{ uri options="article" }}">Чытай 

далей</a></p>
  </div>


{{ /if }}
{{ /list_articles }}

 </div>
</div>
{{ set_default_section }}