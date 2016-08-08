{{list_articles length="1" constraints="onFrontPage is on onSection is on section is 1" order="byPublishDate desc"}}
<div class="section-topnewsbox clearfix">
{{if $gimme->article->has_image(1)}}<div class="border-div"><img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" /></div>{{/if}}
<p class="title">Новость дня</p>
<h3><a href="{{uri}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</h3>
<p class="topnewsbox-date">{{$gimme->article->publish_date|camp_date_format:"%d %M %Y"}} {{if $gimme->article->comment_count}}&#8226; комментарии ({{$gimme->article->comment_count}}){{/if}}</p>
</div>
<div class="section-left-divider"><hr /></div><br /><br />
{{/list_articles}}
{{ if $gimme->article->defined && $gimme->article->has_map }}{{include file="article-map.tpl"}}{{ /if }}
{{include file="front-right-tabs.tpl"}}
<div class="section-left-divider"><hr /></div>
{{include file="poll.tpl"}}
