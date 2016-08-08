<div class="box-142" style="margin:0px;">
<div class="top">&nbsp;</div>
<div class="inner clearfix">
<p class="title" style="line-height:normal;">Самые<br />читаемые</p>
{{ list_articles length="5" constraints="type is Article section greater 19 section smaller 300 issue greater `$gimme->issue->number-5`" order="bypopularity desc" }}
<p style="padding:0 3px 0 3px;"><a href="{{ uri }}">{{ $gimme->article->name }}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}{{if $gimme->article->has_audio}}<i class="ico audio"></i>{{/if}}</p>
{{/list_articles}}
</div><div class="bottom">&nbsp;</div></div>
