<div class="section-left">
{{ set_default_article }}
     <h1>Апошнія артыкулы аўтара {{ $gimme->article->author->name }}</h1>

{{ list_articles length="4" ignore_issue="true" ignore_section="true" order="bypublishdate desc" constraints="author is __current" }}
     <div class="section-left-list">
          {{ if $gimme->article->has_image(2) }}
<img class="smaller" src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" width="257px" />
{{ /if }}
          <h2><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h2>
    <p class="date">{{ if $gimme->article->author->name == "" }}{{ else }}{{ $gimme->article->author->name }}<span>I</span>{{/if}}{{ $gimme->article->publish_date|camp_date_format:"%d %m %Y" }}</p>
    <div class="intro">{{ $gimme->article->Intro }}</div>
                {{ assign var="flag1" value="0" }}
    <p class="comments"><a href="#">Kаментары {{ list_article_comments order="bydate asc"}}
        {{ if $gimme->current_list->at_beginning }} 
        ({{ $gimme->current_list->count }})
        {{ assign var="flag1" value="1" }}
        {{ /if }}
        {{ /list_article_comments }}
        {{ if $flag1 == "0" }}(0){{ /if }}</a></p><br/>
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

{{ /if }}<br/>
{{* end media player implementation *}}
{{ if $gimme->article->has_attachments }}
{{ list_article_attachments }}
    <p class="download">Спампаваць:<a href="{{ uri options="articleAttachment" }}"> {{ $gimme->attachment->file_name }} ({{ $gimme->attachment->size_kb }}kb)</a></p>
{{ /list_article_attachments }}
{{ /if }}
     </div>
{{ if $gimme->current_list->at_end }}
<div id="prevnext">

      {{ if $gimme->current_list->has_previous_elements }}
         <span><a href="{{uripath options="template radio/author.tpl"}}?{{urlparameters options="previous_items" }}">Пазней</a></span>
      {{ else }}
         <span>Пазней</span>
      {{ /if }}
      <span>|</span>
      {{ if $gimme->current_list->has_next_elements }}
         <span><a href="{{uripath options="template radio/author.tpl"}}?{{urlparameters options="next_items"}}">Раней</a></span>
      {{ else }}
         <span>Раней</span>
      {{ /if }}

      </div><!-- /#prevnext -->

{{ /if }}   
{{ /list_articles }}
     </div>

