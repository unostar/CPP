{{list_sections constraints="number greater 9 number smaller 71"}}
<div class="issue-news" {{if $gimme->section->number == 60 }}style="border-bottom:none;"{{/if}}>
{{list_articles}}
{{if $gimme->current_list->index == 1}}
  {{if $gimme->article->has_image(1)}}<div class="border-div"><img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" /></div>{{/if}}
  <h4 style="text-transform:uppercase;"><a href="{{uri}}">{{ $gimme->section->name }}</a></h4>
  <h2><a href="{{uri}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</h2>
  <p style="background:none;color:#000;padding-left:0;margin-bottom:10px;">{{$gimme->article->Intro_front|strip_tags:false|strip}}{{if $gimme->article->comment_count>0}}<a href="{{uri options="article"}}#comments" class="comments_counter">{{$gimme->article->comment_count}}</a>{{/if}}</p>
  <p style="color: #125a95;background:none;padding-left:0;margin:0 0 7px 0;font-weight:bold;">Другие новости рубрики</p>
{{else}}
  <p style="font-weight:bold"><a href="{{uri}}">{{$gimme->article->name}}</a>{{if $gimme->article->comment_count>0}}<a href="{{uri options="article"}}#comments" class="comments_counter">{{$gimme->article->comment_count}}</a>{{/if}}{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</p>
{{/if}}
{{/list_articles}}
</div>
{{/list_sections}}
