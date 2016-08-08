<div class="section-content">
      <div class="section clearfix">
        <div class="section-left">
          <div class="section-title">{{ $gimme->section->name }}</div>

{{ list_articles length="1" }}
          <!-- begin section main story -->
          <div class="section-top-story clearfix">
            {{if $gimme->article->has_image(2)}}<div class="border-div"><img src="{{uri options="image 2"}}&ImageRatio=48%" width="291"><p>{{$gimme->article->image2->photographer}}</p></div>{{/if}}
            <div class="top-story-wrapper" {{if !$gimme->article->has_image(2)}}style="width:auto;"{{/if}}>
              <h1><a href="{{uri}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</h1>
              <p class="section-date">{{$gimme->article->publish_date|camp_date_format:"%d %M %Y"}} {{if $gimme->article->comment_count>0}}&#8226; комментарии ({{$gimme->article->comment_count}}){{/if}}</p>
              <p>{{$gimme->article->Intro_front}}</p>
            </div>
          </div>
          <!-- end section main story -->
          <div class="section-divider"><hr /></div>
{{/list_articles}}


{{if $gimme->section->number == 210}}

  {{list_articles order="bydate desc" ignore_issue="true"}}
  {{if $gimme->current_list->at_beginning}}
    <div class="section-divider"><hr /></div>
    <p class="section-extra-title">Все новости из рубрики {{$gimme->section->name}}</p>
  {{/if}}
  <p class="section-extra-links"><a href="{{uri}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</p>
  {{/list_articles}}

{{else}}

  {{list_articles}}
  {{if $gimme->current_list->at_beginning && $gimme->current_list->count > 1}}
  <p class="section-rest-title">Другие новости этой рубрики</p>
  {{/if}}
  {{if $gimme->current_list->index > 1}}
  <h2><a href="{{uri}}">{{$gimme->article->name}}</a></h2>
  <p class="section-rest-date">{{$gimme->article->publish_date|camp_date_format:"%d %M %Y"}} {{if $gimme->article->comment_count>0}}&#8226; комментарии ({{$gimme->article->comment_count}}){{/if}}</p>
  <p>{{$gimme->article->Intro_front}}</p>
  {{/if}}
  {{/list_articles}}

  <!-- begin list of articles from previous issue -->
  {{list_articles length="5" constraints="issue is `$gimme->issue->number-1` section is `$gimme->section->number`"}}
  {{ if $gimme->current_list->at_beginning }}          
    <div class="section-divider"><hr /></div>
    <p class="section-extra-title">Другие новости из рубрики {{$gimme->section->name}} предыдущего номера</p>
  {{/if}}
  <p class="section-extra-links"><a href="{{uri}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</p>
  {{/list_articles}}
  <!-- end list of articles from previous issue -->

{{/if}}

        </div>
        <div class="section-right">{{ include file="section-right.tpl" }}</div>
        <div class="section-fulldivider"><hr /></div>
      </div>
<div class="banner-section">{{ include file="banner-middle728x90.tpl" }}</div>
</div>