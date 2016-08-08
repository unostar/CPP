   <div class="section-right">
          {{ set_section number="1" }}
    <h3 style="margin:16px 0 12px 20px;">Навіны сайту</h3>
          {{ list_articles length="3" }}
    <p><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
          {{ if $gimme->current_list->at_end }}
          {{ else }}
    <div class="copy-divider"><hr /></div>
          {{ /if }}
          {{ /list_articles }}
<p class="download" style="padding:4px 0 0 0;">Усе навiны радыё:<a href="{{ uri options="section" }}"> www.tstyl.fm</a></p>
          {{ set_default_section }}
    <h3>Чытай</h3>
          {{ local }}
          {{ set_publication identifier="1" }}
          {{ set_current_issue }}
          {{ set_section number="1"}}
          {{ list_articles length="4" order="bypublishdate desc" }}
    <p><a href="{{url options="article"}}">{{ $gimme->article->name }}</a></p>
          {{ if $gimme->current_list->at_end }}
          {{ else }}
    <div class="copy-divider"><hr /></div>
          {{ /if }}
          {{ /list_articles }}
          {{ /local }}
    <p class="download" style="padding:4px 0 0 0;">Чытаць навiны:<a href="http://www.t-styl.info"> www.t-styl.info</a></p>
          {{ set_section number="110" }}
    <h3><a href="{{uri options="section"}}">Фотагалерэя ТС</a></h3>
    <div class="gallery-box">
{{ include file="radio/tooltip-gallery.tpl" }}
<p class="download" style="margin:0 0 0 8px;padding-top:10px;"><a class="email" target="email" href="/templates/newspaper/php/mail/send.php">Даслаць фота</a></p>
     </div>
     {{set_section number="400"}}
     <h3><a href="{{uri options="section"}}">Фанатэка ТС</a></h3>
      {{ list_articles length="4" order="bypublishdate desc"}}
     <p><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
{{if !$gimme->current_list->at_end}}<div class="copy-divider"><hr /></div>{{ /if }}
      {{ /list_articles }}
     <p class="download" style="margin:0 0 0 18px;padding-top:10px;"><a class="email" target="email" href="/templates/newspaper/php/mail/send.php">Даслаць музыку</a></p>
     {{ set_section number="450" }}
     {{ list_articles length="1" order="bypublishdate desc"}}
     <span class="gdate">{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }}</span><h3 style="margin-bottom:5px;"><a href="{{ uri options="section" }}">Глядзі</a></h3>
<div class="copy-divider"><hr /></div>
<h3 class="title"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
<div class="copy-divider" style="margin-top:5px;"><hr /></div>
<div class="u-tube">
<object width="200" height="166"><param name="movie" value="{{ $gimme->article->Youtube_url }}"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="{{ $gimme->article->Youtube_url }}" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="200" height="166"></embed></object>
</div>
{{ set_default_section }}
<p class="download" style="margin:0 0 0 18px;padding-top:10px;"><a class="email" target="email" href="/templates/newspaper/php/mail/send.php">Даслаць вiдэа</a></p>
{{ /list_articles }}
  </div>