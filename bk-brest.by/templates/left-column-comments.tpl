<div class="b-sec b-comments">
  <div class="b-bheader_black"><span>КОММЕНТАРИИ</span></div>
  <span class="b-comments_header">Последние комментарии:</span>
  <div>
{{list_article_comments length="7" ignore_article="true" order="byDate desc"}}{{if $gimme->article->number != 78}}
    <div class="b-comments_item">
      <ul class="g-none b-freshnews">
        <li><div><a href="{{uri options="article"}}#comments">{{$gimme->article->name}}</a>
        <span class="b-freshnews_no"><i class="ico ico-comments"></i> {{$gimme->article->comment_count}}</span>
        </div></li>
      </ul>
      <p>{{$gimme->comment->content|truncate:400}}
      <span class="b-freshnews_time"><i class="ico ico-time"></i> {{$gimme->comment->submit_date|camp_date_format:"%H:%i"}}</span>
      </p>
    </div>
{{/if}}{{/list_article_comments}}
  </div>
</div>
