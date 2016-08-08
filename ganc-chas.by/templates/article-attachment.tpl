{{if $gimme->article->has_attachments}}
<div class="b-main header-huge">Приложения к материалу</div>
<div class="b-main">
  <dl class="b-comm b-attachments{{if $gimme->attachment->extension == "mp3"}} mp3{{/if}}">
{{list_article_attachments}}
{{if $gimme->attachment->extension == "mp3"}}
    <dt>
      {{$gimme->attachment->description}}<br />
      <object height="20" width="200" data="/templates/images/player_mp3_maxi.swf" type="application/x-shockwave-flash" align="top">
        <param value="/templates/images/player_mp3_maxi.swf" name="movie" />
        <param name="wmode" value="opaque" />
        <param value="mp3={{uri options="articleattachment"}}&amp;showstop=1&amp;showvolume=1&amp;buttonwidth=25&amp;sliderwidth=15&amp;bgcolor1=5EA65E&amp;bgcolor2=365E36" name="FlashVars" />
      </object><br />
      <a href="{{uri options="articleattachment"}}">{{$gimme->attachment->file_name}}, {{$gimme->attachment->size_kb}}Kb</a>
    </dt>
{{ else }}
  <dt><a href="{{uri options="articleattachment"}}">{{$gimme->attachment->description}} ({{$gimme->attachment->extension}}, {{$gimme->attachment->size_kb}} Kb)</a></dt>
{{/if}}
{{/list_article_attachments}}
  </dl>
</div>
{{/if}}
