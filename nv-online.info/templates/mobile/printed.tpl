{{include file="mobile/_header.tpl"}}
<h4><a href="/" class="back">НАВІНЫ ПА РУБРЫКАХ >></a></h4>
{{assign var="sect_num" value=$gimme->section->number}}
{{assign var="sect_url" value="/`$gimme->issue->language->code`/`$gimme->issue->url_name`/`$gimme->section->url_name`"}}
{{local}}
{{set_publication identifier="1"}}
{{set_current_issue}}
{{set_section number=$sect_num}}
{{set_topic identifier="6"}}
<h2 class="main_news">Свежы нумар:&nbsp;&nbsp;{{$gimme->issue->name}}</h2>
{{list_subtopics order="bynumber asc"}}
<h2 class="main_news">{{$gimme->topic->name}} паласа</h2>
{{list_articles constraints="type is A_text"}}
<p class="title"><a href="{{$sect_url}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>
<span>({{$gimme->article->last_update|camp_date_format:"%H:%i, %d.%m"}})</span></p>
{{/list_articles}}
{{/list_subtopics}}
{{/local}}
<h4><a href="/" class="back">вярнуцца на галоўную >></a></h4>
{{include file="mobile/_footer.tpl"}}
