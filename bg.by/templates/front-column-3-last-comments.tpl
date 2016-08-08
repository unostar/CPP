<div class="box-305">
  <div class="top-alt"><span>Последние комментарии</span></div>
  <div class="center-content-blank clearfix" style="width:281px;text-align:left;">
{{list_article_comments length="7" ignore_article="true" order="byDate desc"}}
      <br /><b><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></b>
      <p>{{$gimme->comment->submit_date|camp_date_format:"%e %M, %H:%i"}}: {{$gimme->comment->content}}</p>
{{/list_article_comments}}
  </div>
  <div class="bottom-blank"><span>&nbsp;</span></div>
</div>