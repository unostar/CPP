<div id="tabmn" class="tab-main-news sliderwrapper">
<div class="loading"></div>
{{list_articles length="4" constraints="OnFrontPage is on" order="bypublishdate desc" ignore_issue="true"}}
  <div class="top-news contentdiv">
    <div class="img_box"><img src="{{uri options="image 2"}}" alt="{{$gimme->article->image2->description|escape}}" /></div>
    <span>{{$gimme->article->Intro|strip_tags:false|strip}}<p><a href="{{uri options="article"}}" class="read">Далее</a></p></span>
  </div>
{{/list_articles}}
  <dl id="paginate-tabmn" class="tabnav pagination">
{{list_articles length="4" constraints="OnFrontPage is on" order="bypublishdate desc" ignore_issue="true"}}
    <dt><a href="{{uri options="article"}}" class="toc">{{$gimme->article->name}}{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</a></dt>
{{/list_articles}}
  </dl>
</div>