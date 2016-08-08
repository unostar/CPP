{{include file="mobile/_header.tpl"}}
{{local}}{{set_publication identifier="1"}}{{set_current_issue}}<h4><a href="/by/mobile/printed/" class="back">СВЕЖЫ НУМАР:&nbsp;&nbsp;{{$gimme->issue->name}} >></a></h4>{{/local}}
<h2><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></h2>
{{assign var="sect_num" value=$gimme->section->number}}
{{assign var="sect_url" value="/`$gimme->issue->language->code`/`$gimme->issue->url_name`/`$gimme->section->url_name`"}}
{{local}}
{{set_publication identifier="1"}}
{{list_articles length="15" constraints="section is $sect_num" ignore_issue="true"}}
{{if $gimme->current_list->at_beginning}}
<p class="title_bold">
{{if $gimme->article->has_image(2)}}<img src="{{$gimme->article->image2->thumbnailurl}}" alt="" />{{/if}}
<a href="{{$sect_url}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>
<span>({{$gimme->article->last_update|camp_date_format:"%H:%i, %d.%m"}})</span>
</p>
{{else}}
<p class="title">
<a href="{{$sect_url}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>
<span>({{$gimme->article->last_update|camp_date_format:"%H:%i, %d.%m"}})</span>
</p>
{{/if}}
{{/list_articles}}
{{/local}}
<h4><a href="/" class="back">вярнуцца на галоўную >></a></h4>
{{include file="mobile/_footer.tpl"}}
