<div id="photofact">
<h4>Фотафакт</h4>
<div class="slider">
<div title="Назад" class="prev"></div>
<div class="scrollable">
  <div class="items clearfix">
{{set_section number="60"}}
{{list_articles length="8" order="bypublishdate desc" constraints="type is photo" ignore_issue="true"}}
    <div>
      <img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" title="{{$gimme->article->image1->description}}" />
      <a href="{{uri options="article"}}">{{$gimme->article->name|wordwrap:24:" ":TRUE}}</a>
      <p class="date">{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}</p>
      <p class="comments">{{if $gimme->article->comment_count}}Каментароу: <a href="{{uri options="article"}}#comments" class="comments">({{$gimme->article->comment_count}})</a>{{/if}}</p>
    </div>
{{/list_articles}}
{{set_default_section}}
  </div>
</div>
<div title="Далей" class="next"></div>
</div>
</div>