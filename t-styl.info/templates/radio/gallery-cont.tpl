{{set_default_issue}}
{{set_default_section}}
{{set_default_article}}
{{ if $gimme->article->has_image(100) }}
<h3 class="calendar" style="margin:0;padding:15px 0 0 20px;">{{$gimme->article->name}}<br />
<span class="date" style="font-weight: normal; font-size: 12px; color: #ddffdd; text-transform: uppercase">{{ if $gimme->article->author->name == "" }}{{ else }}{{ $gimme->article->author->name }}<small style="margin: 0 5px; font-size: 12px; color: #464646">I</small>{{/if}}{{ $gimme->article->publish_date|camp_date_format:"%d %m %Y" }}</span></h3>
<div class="article-left-content" style="margin:0;padding:0 0 0 20px;">
<div class="intro">{{ $gimme->article->Intro }}</div>
<div class="full-text" style="margin:0;padding:0;">{{ $gimme->article->Full_text }}</div>
</div>
<div id="minigal-gallery" class="minigal-gallery">
<script type="text/javascript" src="/templates/radio/javascript/minigal/minigal.js"></script>

<div id="minigal" class="sliderwrapper">
{{list_article_images order="byNumber asc"}}
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
        {{list_article_images order="byNumber asc"}}{{if $gimme->image->article_index > 99}}
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