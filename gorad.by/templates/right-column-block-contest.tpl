{{list_articles length="1" constraints="type is article section is 140" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
<div class="b-maincontent">
<h2 class="header-block"><b class="bg-header-block-l"></b><b class="bg-header-block-r"></b><span class="header-block-i">Конкурс</span></h2>
<div class="b-maincontent-il"><div class="b-maincontent-ir"><div class="b-maincontent-i">
{{/if}}
<div class="b-maincontent-n-i">
<div class="b-n-konkurs"><span class="b-n-konkurs_header">“{{$gimme->article->name}}”</span>
{{$gimme->article->intro}}
<a href="/by/page/letter" class="button-main"><span class="button-main-i">Удзельнічаць</span></a> ці  <a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">глядзець вынік</a>
</div></div>
{{if $gimme->current_list->at_end}}
</div></div></div>
<span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div>
{{/if}}
{{/list_articles}}
