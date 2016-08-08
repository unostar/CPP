<div class="home-program-slider" id="slider">
<div class="navi">Апошнія праграмы</div>
<a class="prev"></a>
<div class="scrollable">
  <div class="items">
    {{list_articles length="12" ignore_issue="true" ignore_section="true" constraints="topic is latest_programs:ru" order="bypublishdate desc"}}
    <div>
      {{if $gimme->article->has_image(2)}}
      <a title="{{ $gimme->article->name|escape }} - {{ $gimme->article->intro|strip_tags:true|escape }}" style="margin: 0; padding: 0; background: none; display: block" href="{{uri options="article"}}"><img src="{{ uri options="image 2" }}" alt="{{$gimme->article->image2->description}}" /></a>
      {{/if}}
      {{*<div id="jason{{$gimme->article->number}}" class="jason"><span style="color: #9ab2be">{{$gimme->article->name}}</span><br /><span style="color:#d3d3d3">{{$gimme->article->publish_date|camp_date_format:"%d.%m.%Y"}}</span><br />{{$gimme->article->intro|truncate:160}}</div>*}}
      <a href="javascript:animatedcollapse.toggle('jason{{$gimme->article->number}}')" class="button"></a>
      <script type="text/javascript">animatedcollapse.addDiv('jason{{$gimme->article->number}}','fade=1')</script>
      <a style="margin-top: 112px" href="{{uri options="article"}}">Паслухаць</a>
    </div>
    {{ /list_articles }}
  </div>
</div>
<a class="next"></a>
<br clear="all" />
<script type="text/javascript">animatedcollapse.ontoggle=function($, divobj, state){};animatedcollapse.init();</script>
<script type="text/javascript">$(function(){$("div.scrollable").scrollable({size:4,clickable:false,interval:0,speed:800});});</script>
</div>
