{{assign var="xdate" value="-1 month"|date_format:"%Y-%m-%d"}}
<div class="b-maincontent">
<h2 class="header-block m-header-block-blue"><b class="bg-header-block-l"></b><b class="bg-header-block-r"></b><span class="header-block-i">Самае чытанае за месяц</span></h2>
<div class="b-maincontent-il"><div class="b-maincontent-ir"><div class="b-maincontent-i">
<div class="b-maincontent-n-i">
<ul class="list-linkarrow">
{{list_articles length="6" order="bypopularity desc" constraints="type is article publish_date greater $xdate reads greater 0" ignore_issue="true" ignore_section="true"}}
<li><h3><a href="/by/page/{{$gimme->article->section->url_name}}/{{$gimme->article->number}}"><span class="list-linkarrow-i">{{$gimme->article->name|escape:'html'}}{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}</span> <sup>({{$gimme->article->reads}})</sup></a></h3></li>
{{/list_articles}}
</ul>
</div>
</div></div></div>
<span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div>
