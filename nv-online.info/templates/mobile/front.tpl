{{include file="mobile/_header.tpl"}}
{{set_current_issue}}
{{assign var="issue_url" value="/`$gimme->issue->language->code`/`$gimme->issue->url_name`"}}
{{local}}
{{set_publication identifier="1"}}{{set_current_issue}}
<h4><a href="/by/mobile/printed/" class="back">СВЕЖЫ НУМАР:&nbsp;&nbsp;{{$gimme->issue->name}} >></a></h4>
<h2 class="main_news">Галоўныя навіны</h2>
{{list_articles length="1" ignore_issue="true" ignore_section="true" constraints="OnFrontPage is on OnSection is on" order="bypublishdate desc"}}
<p class="title_bold">
{{if $gimme->article->has_image(2)}}<img src="{{$gimme->article->image2->thumbnailurl}}" alt="" />{{/if}}
<a href="{{$issue_url}}/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>
<span>({{$gimme->article->last_update|camp_date_format:"%H:%i, %d.%m"}})</span>
</p>
{{/list_articles}}
{{list_articles length="4" ignore_issue="true" ignore_section="true" constraints="OnFrontPage is off OnSection is on" order="bypublishdate desc"}}
<p class="title">
<a href="{{$issue_url}}/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>
<span>({{$gimme->article->last_update|camp_date_format:"%H:%i, %d.%m"}})</span>
</p>
{{/list_articles}}
{{/local}}
{{list_sections constraints="number smaller 300"}}
<h2><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></h2>
{{assign var="sect_num" value=$gimme->section->number}}
{{assign var="sect_url" value="/`$gimme->issue->language->code`/`$gimme->issue->url_name`/`$gimme->section->url_name`"}}
{{local}}
{{set_publication identifier="1"}}
{{list_articles length="5" constraints="section is $sect_num" ignore_issue="true"}}
<p class="title">
<a href="{{$sect_url}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>
<span>({{$gimme->article->last_update|camp_date_format:"%H:%i, %d.%m"}})</span>
</p>
{{/list_articles}}
{{/local}}
{{/list_sections}}
{{include file="mobile/_footer.tpl"}}
