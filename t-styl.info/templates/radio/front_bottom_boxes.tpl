<div id="home-3-boxes" class="clearfix" style="margin-top:19px; position: relative">
{{ include file="radio/program-slider.tpl" }}

<div style="clear: both; postion: relative" class="clearfix">

  <div class="home-box-1 clearfix">
      <div class="home-box-1-content">
       {{ set_default_issue }}
       {{ set_section number="110" }}
       <h3><a href="{{uri options="section"}}">Фотагалерэя ТС</a></h3>
     <div class="gallery-box" style="overflow:hidden">
{{ include file="radio/tooltip-gallery.tpl" }}
     </div>
     </div>
     <img src="/templates/radio/images/bottom-round.gif" alt="" width="237px" style="clear:left"/>
  </div>
  <div class="home-box-2">
      <div class="home-box-2-content">

{{ set_section number="400" }}
      <h3 style="margin-bottom:6px;"><a href="{{uri options="section"}}">Фанатэка ТС</a></h3>
      {{ list_articles length="6" order="bypublishdate desc"}}
      <p><a href="{{uri options="article"}}">{{ $gimme->article->name }}</a></p>
      {{if !$gimme->current_list->at_end}}<div class="copy-divider"><hr /></div>{{ /if }}
      {{ /list_articles }}
      
   </div><img src="/templates/radio/images/bottom-center-round.gif" alt="" width="257px"  />
  </div>
  <div class="home-box-3">
       <div class="home-box-3-content">
        {{ set_section number="450" }}
       {{ list_articles length="1" order="bypublishdate desc" }}
     <span class="gdate">{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }}</span><h3 style="margin-bottom:5px;"><a href="{{ uri options="section" }}">Глядзі</a></h3>
<div class="copy-divider"><hr /></div>
<h3 class="title"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
<div class="copy-divider" style="margin-top:5px;"><hr /></div>
<div class="u-tube" style="margin-left:18px;">

<object type="application/x-shockwave-flash" data="{{ $gimme->article->Youtube_url }}" width="200" height="166"><param name="movie" value="{{ $gimme->article->Youtube_url }}" /><param name="FlashVars" value="playerMode=embedded" /><param name="wmode" value="transparent" /></object>

</div>
{{ /list_articles }}
{{set_default_section}} 
</div>
     <img src="/templates/radio/images/bottom-round.gif" alt="" width="237px" />
  </div>
</div>
<div style="text-align:center;margin:20px 0;position: relative;">
<img src="/templates/radio/images/banner-728x90.gif" alt="" width="728px" />
</div>
</div>