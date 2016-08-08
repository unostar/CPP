{{list_articles length="1" constraints="section is 240" ignore_issue="true"}}
<div class="competition">
<p class="title"><a href="{{uri options="template archive-rest-sections.tpl"}}">Конкурсы</a></p>
<p><a href="{{uri}}">{{$gimme->article->name}}</a></p>
<p class="competition-date">{{$gimme->article->publish_date|camp_date_format:"%d %M %Yг."}}{{if $gimme->article->comment_count>0}}, комментарии ({{$gimme->article->comment_count}}){{/if}}</p>
</div>
{{/list_articles}}
