{{ set_section number="10" }}
<link href="/templates/js/contentslider/contentslider.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/templates/js/contentslider/contentslider.js"></script>
<div id="big-stories">
  <div id="big-stories-slider" class="sliderwrapper">
  {{ list_articles length="4" order="bypublishdate desc" ignore_issue="true" constraints="OnFrontPage is on OnSection is on" }}
    <div class="contentdiv">
     <div id="slides">
      <img alt="{{$gimme->image->description}}" src="{{uri options="image 2"}}" />
      <div class="description"><h3>{{$gimme->article->name}}</h3><div class="intro-div">{{$gimme->article->photo_description|truncate:380:"..."}}</div></div>
     </div><!-- /#slides -->
     <h2>{{ $gimme->article->name }}</h2>
     <p class="uptitle">{{ $gimme->section->name }}{{ if $gimme->article->has_topic(9) }} - <a href="{{ uri options="template topic-town.tpl" }}">{{ $gimme->article->town }}</a>,{{ /if }} {{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y %H:%i" }}</p>
     <div class="intro-div">{{ $gimme->article->intro }}</div>
     <p id="readmore"><a href="{{ uri options="article" }}">чытай далей</a></p>
    </div><!-- /.contentdiv -->
  {{ /list_articles }}
  </div><!-- /#big-stories-slider -->
<div id="paginate-big-stories-slider" class="pagination">
{{list_articles length="4" order="bypublishdate desc" ignore_issue="true" constraints="OnFrontPage is on OnSection is on" }}<a href="#" class="toc" style="background:url({{uri options="image 1"}}&ImageRatio=55) no-repeat center;"></a>{{/list_articles}}
</div>
</div><!-- /#big-stories -->
<script>init_contentslider();</script>
{{ set_default_section }}
