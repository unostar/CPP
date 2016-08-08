<div class="b-bheader_black"><span>Свежие новости</span></div>
<div class="b-freshnews{{if $gimme->template->name != "front.tpl"}} b-sec{{/if}}">
{{list_articles length="7" constraints="type is article section is 210" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
  <ul class="g-none">
{{/if}}
    <li>
      <div><a href="{{uri options="article"}}">{{$gimme->article->name}}</a>
      <span class="b-freshnews_time"><i class="ico ico-time"></i> {{$gimme->article->publish_date|camp_date_format:"%H:%i"}}</span>
      <span class="b-freshnews_no"><i class="ico ico-views"></i> {{$gimme->article->reads}}</span>
      {{ if $gimme->article->comment_count > 0 }}<i class="ico ico-comments"></i> {{$gimme->article->comment_count}}{{ /if }}</span></div>
    </li>
{{if $gimme->current_list->at_end}}
  </ul>
<a href="{{uri options="section"}}" class="a-linebullet">Все новости</a>
{{/if}}
{{/list_articles}}
</div>