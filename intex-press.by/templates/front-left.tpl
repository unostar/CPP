<div class="home-column-1">
<!-- begin main news-->
{{list_articles length="1" constraints="onFrontPage is on onSection is on section is 1" ignore_issue="true" order="byPublishDate desc"}}
{{if $gimme->article->has_image(2)}}<div class="border-div"><img src="{{uri options="image 2"}}&ImageWidth=290" width="290"></div>{{/if}}
<h1><a href="{{ uri }}">{{ $gimme->article->name }}</a></h1>
<p>{{$gimme->article->Intro_front}}{{if $gimme->article->comment_count>0}}<a href="{{uri options="article"}}#comments" class="comments_counter">{{$gimme->article->comment_count}}</a>{{/if}}{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</p>
<div class="column-1-divider"><hr /></div>
{{ /list_articles }}
<!-- end main news-->
{{ include file="banner-left290x250.tpl" }}
<div class="column-1-divider"><hr /></div>
{{ include file="poll.tpl" }}
<div class="column-1-divider"><hr /></div>
{{ include file="front-left-widgets.tpl" }}
{{ include file="banner-left300x100.tpl" }}
</div>