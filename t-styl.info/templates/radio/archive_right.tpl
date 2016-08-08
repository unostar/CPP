	 <div class="section-right">
          {{ set_section number="1" }}
	  <h3 style="margin:16px 0 12px 20px;">Навіны сайту</h3>
          {{ list_articles length="2" }}
	  <p><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
          {{ if $gimme->current_list->at_end }}
          {{ else }}
	  <div class="copy-divider"><hr /></div>
          {{ /if }}
          {{ /list_articles }}
          {{ set_default_section }}
	  <h3>Чытай</h3>
          {{ local }}
          {{ set_publication identifier="1" }}
          {{ set_current_issue }}
          {{ set_section number="1"}}
          {{ list_articles length="5" order="bypublishdate desc" }}
	  <p><a href="{{url options="article"}}">{{ $gimme->Article->name }}</a></p>
          {{ if $gimme->current_list->at_end }}
          {{ else }}
	  <div class="copy-divider"><hr /></div>
          {{ /if }}
          {{ /list_articles }}
          {{ /local }}
	  <p class="download" style="padding:4px 0 0 0;">Чытаць навiны:<a href="http://www.t-styl.info"> www.t-styl.info</a></p>
	  <h3>Фота-галерэя ТС</h3>
	  <div class="gallery-box">
{{ include file="radio/tooltip-gallery.tpl" }}
	   </div>
	   <h3>Фанатэка ТС</h3>
      {{ unset_section }}
      {{ list_articles length="3" constraints="topic is Фанатэка\ ТС:en" order="bypublishdate desc"}}
	   <p><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{ if $gimme->article->has_attachments }}
{{ list_article_attachments }}
<span class="size">&nbsp;(Спампаваць: {{ $gimme->attachment->size_kb }}KB)</span>
{{ /list_article_attachments }}
{{ /if }}</p>
          {{ if $gimme->current_list->at_end }}
          {{ else }}
	   <div class="copy-divider"><hr /></div>
          {{ /if }}
      {{ /list_articles }}
     {{ list_articles length="1" constraints="topic is Глядзі:en" order="bypublishdate desc"}}
     <span class="gdate">{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }}</span><h3 style="margin-bottom:5px;">Глядзі</h3>
<div class="copy-divider"><hr /></div>
<h3 class="title"><a href="{{ uri options="article" }}">Тыдзень у &quot;Тваім Стылі&quot;</a></h3>
<div class="copy-divider" style="margin-top:5px;"><hr /></div>
<div class="u-tube">
<object width="200" height="166"><param name="movie" value="{{ $gimme->article->Youtube_url }}"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="{{ $gimme->article->Youtube_url }}" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="200" height="166"></embed></object>
>
</div>
{{ /list_articles }}
	 </div>