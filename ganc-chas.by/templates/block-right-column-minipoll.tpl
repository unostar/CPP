<div class="b-articlesmall">
{{list_articles length="1" constraints="section is 140 type is minipoll" ignore_issue="true" order="bypublishdate desc"}}
  <div class="header-category">ЭКСПРЕСС-ОПРОС</div>
  <a href="/by/page/votes" class="header-article">{{$gimme->article->name}}</a>
<div id="mini-poll">
{{list_article_images}}
  <div{{if !$gimme->current_list->at_beginning}} style="display:none"{{/if}}>
    <span class="b-article_img"><img src="{{uri options="image"}}" alt="{{$gimme->image->photographer}}" width="80" height="80" /></span>
    <strong class="b-articlesmall_h">{{$gimme->image->photographer}}</strong>
    <p>{{$gimme->image->description}}</p>
  </div>
{{/list_article_images}}
</div>
{{/list_articles}}
</div>
