<div class="autor-project clearfix" >

<div id="slider1" class="sliderwrapper">
{{list_articles length="10" constraints="section is 200" ignore_issue="true" order="bypublishdate desc"}}

<div class="contentdiv">
<div class="autor-box"><img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" />
  <p class="title">Автор:</p>
  <p>{{$gimme->article->author->name}}</p>
</div>
<p class="title"><a href="{{uri options="section"}}">Авторский проект</a></p>
<p><a href="{{uri}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</p>
<p class="autor-date">{{$gimme->article->publish_date|camp_date_format:"%d %M %Yг."}}{{if $gimme->article->comment_count>0}}, комментарии ({{$gimme->article->comment_count}}){{/if}}</p>
</div>
{{/list_articles}}
</div>
<div id="paginate-slider1" class="pagination">

</div>
<script type="text/javascript">featuredcontentslider.init({id:"slider1", contentsource:["inline", ""], enablefade:[true, 0.2], autorotate:[true, 8000]});</script>