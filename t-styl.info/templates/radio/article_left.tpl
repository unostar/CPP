{{ set_default_issue }}
{{ set_default_section }}
{{ set_default_article }}
<div class="article-left" style="padding-bottom:30px;">
     <div class="article-left-content">
     
     <h1 class="section-name"><a href="{{ uri options="section"}}">{{ $gimme->section->name }}</a></h1>
     <div class="article-tools">{{ if $gimme->article->has_image(2) }}
        <img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" class="gallery" width="160px" />
{{ /if }} 
{{ if $gimme->article->has_attachments }}
{{ list_article_attachments }}
     <p class="tools">Спампаваць: <a href="{{ uri options="articleAttachment" }}">{{ $gimme->attachment->file_name }} ({{ $gimme->attachment->size_kb }}KB)</a></p>
     <div class="copy-divider"><hr /></div>
{{ /list_article_attachments }}
{{ /if }}
     <p class="tools"><a href="{{ uri options="template radio/print.tpl"}}" target="_blank">Друкаваць артыкул</a></p>
     <div class="copy-divider"><hr /></div>
     <p class="tools"><a href="{{ uri options="template newspaper/php/sendtofriend/sendtofriend.php" }}" target="send" class="send">Пераслаць на э-адрас</a></p>
     </div>
     <h2>{{ $gimme->article->name }}</h2>
           <p class="date">{{ if $gimme->article->author->name != "" }}<a style="color: #fff; text-decoration: underline" href="{{ uri options="template radio/author.tpl" }}">{{ $gimme->article->author->name }}</a>{{/if}}</p>
     <p class="date">{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }}<span>I</span>{{ if $gimme->article->comments_enabled }}
{{ assign var="flag1" value="0" }}<a href="#add_comment">Каментары {{ list_article_comments order="bydate asc"}}
      {{ if $gimme->current_list->at_beginning }} 
        ({{ $gimme->current_list->count }})
        {{ assign var="flag1" value="1" }}
        {{ /if }}
        {{ /list_article_comments }}
        {{ if $flag1 == "0" }}(0){{ /if }}</a>{{ /if }}</p>
     <div class="intro">{{ $gimme->article->Intro }}</div>
{{ if $gimme->article->has_attachments }}
<br/>
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
{{ /list_article_attachments }}
{{ /if }}
     <div class="full-text">{{ $gimme->article->Full_text }}</div>
       </div>

{{if $gimme->article->Youtube_url}}
<p align="center" style="margin:20px auto;"><object type="application/x-shockwave-flash" data="{{$gimme->article->Youtube_url}}" width="480" height="295"><param name="movie" value="{{$gimme->article->Youtube_url}}" /><param name="FlashVars" value="playerMode=embedded" /><param name="wmode" value="transparent" /></object></p>
{{/if}}

{{ if $gimme->article->has_image(100) }}
<div id="minigal-gallery" class="minigal-gallery">
<script type="text/javascript" src="/templates/radio/javascript/minigal/minigal.js"></script>

<div id="minigal" class="sliderwrapper">
{{list_article_images}}
{{if $gimme->image->article_index > 99}}
  <div class="contentdiv">
    <a href="{{uri options="image"}}" rel="minigalZoom" title="{{$gimme->image->description}} Фота: {{$gimme->image->photographer}}" style="background:url({{uri options="image"}}&amp;ImageRatio=50) no-repeat center;"></a>
    {{$gimme->image->description}}
  </div>
{{/if}}
{{/list_article_images}}
</div>

<div id="paginate-minigal" class="minigal-slider">
  <div class="navi"></div>
  <a class="less"></a>
    <div class="minigal-scrollable">
      <div class="items">
        {{list_article_images}}{{if $gimme->image->article_index > 99}}
          <a href="#" class="toc" style="background:url({{uri options="image"}}&amp;ImageRatio=6) no-repeat center;"></a>
        {{/if}}{{ /list_article_images }}
      </div>
    </div>
  <a class="more"></a>
  <br clear="all" />
</div>

<script type="text/javascript">initminigal();</script>
</div>
{{/if}}
     
{{ include file="radio/article_comments.tpl" }}

</div>
