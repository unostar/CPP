{{set_default_issue}}
<div id="front-major-news" class="clearfix">
<div class="player-wrapper clearfix">
<div id="major-news" class="sliderwrapper">
{{ list_articles length="14" ignore_issue="true" ignore_section="true" order="bypublishdate desc"}}
  <div class="contentdiv">
  {{if $gimme->article->has_image(2)}}<img class="picture" src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" width="310" />{{/if}}
  <h1><a href="{{ uri options="article"}}">{{ $gimme->article->name }}</a></h1>
  <p class="byline">{{ if $gimme->article->author->name != "" }}{{ $gimme->article->author->name }}&nbsp;&nbsp;I&nbsp;&nbsp;{{/if}}{{ $gimme->article->publish_date|camp_date_format:"%d %m %Y" }}</p>
  <p>{{ $gimme->article->intro }}</p>
  </div>
{{/list_articles}}
</div>

<div id="paginate-major-news" class="pagination">
<p class="title">НАВІНЫ</p>
<ul>
{{ list_articles length="14" columns="7" ignore_issue="true" ignore_section="true" order="bypublishdate desc" }}
  {{if $gimme->current_list->row==2}}</ul><ul class="right">{{/if}}
  <li><a class="toc" href="{{ uri options="article" }}">{{ $gimme->article->name }}{{ if $gimme->article->video || $gimme->article->audio || $gimme->article->photo }}&nbsp;&nbsp;{{ /if }}{{ include file="newspaper/icons.tpl" }}<span>&nbsp;&nbsp;I&nbsp;&nbsp;{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }}</span></a></li>
{{ /list_articles }}
</ul>
</div>
<p class="more"><a href="{{set_section number="1"}}{{uri options="section"}}{{set_default_section}}">Чытай далей &gt;&gt;</a></p>
<script type="text/javascript">init('major-news')</script>
</div>

{{* additional boxes *}}
<div class="additional-box">
{{ include file="newspaper/front-column-2-radio-box.tpl" }}
{{ include file="newspaper/column-1-tabs.tpl" }}
</div>

</div>