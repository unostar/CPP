{{ include file="_html-head.tpl" }}
<body>
<div id="wrapper">
<!-- begin header wrapper-->
{{ include file="_header.tpl" }}
<!-- end header wrapper -->
<!-- begin middle content -->
<div id="content-wrapper" class="clearfix">
<!-- begin section content -->
<div class="section-content">
      <div class="section clearfix">
        <div class="section-left">
          <div class="section-title">{{ $gimme->section->name }}</div>

{{list_articles length="1" constraints="section smaller 12 topic is Выборы:ru"}}
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

  {{list_articles constraints="section smaller 12 topic is Выборы:ru" ignore_issue="true" length="5"}}
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
  {{*list_articles length="5" constraints="issue smaller `$gimme->issue->number` section smaller 12 topic is Выборы:ru"}}
  {{ if $gimme->current_list->at_beginning }}          
    <div class="section-divider"><hr /></div>
    <p class="section-extra-title">Другие новости из рубрики Выборы</p>
  {{/if}}
  <p class="section-extra-links"><a href="{{uri}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</p>
  {{/list_articles*}}
  <!-- end list of articles from previous issue -->


        </div>
        <div class="section-right">{{ include file="section-right.tpl" }}</div>
        <div class="section-fulldivider"><hr /></div>
      </div>
<div class="banner-section">{{ include file="banner-middle728x90.tpl" }}</div>
</div>
<!-- end section content -->
</div>
<!-- end middle content -->
<!-- begin footer content -->
{{ include file="_footer.tpl" }}
<!-- end footer content -->
</div>
</body>
</html>