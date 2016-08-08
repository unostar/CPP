<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="{{$gimme->issue->language->code}}">
<meta name="keywords" content="{{$siteinfo.keywords}}" />
<meta name="description" content="{{$siteinfo.description}}" />
<title>{{$gimme->publication->name}}</title>
{{include file="_html_header.tpl"}}
<link href="/templates/css/archive.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="wrapper" class="clearfix">
  <div id="header">{{include file="_header.tpl"}}</div>
  <div id="main" class="clearfix">
    <div class="column-1 clearfix">

<div class="archive-box">
{{ local }}
{{ list_polls name="polls_list" length="5" order='bylastmodified desc' }}
<div class="pollinarch">
<ul style="border-bottom: none; margin-bottom: 0;">
   <li class="year"><a style="text-decoration: none">{{ $gimme->poll->name }}</a>
   
   <div style="width: 310px; float: right; font-size: 12px; margin-top: 10px">
       {{list_poll_answers order="byOrder asc"}}
       <div class="answer">{{$gimme->pollanswer->percentage|string_format:"%d"}}%: {{ $gimme->pollanswer->answer }}
       <div style="width:{{$gimme->pollanswer->percentage|string_format:"%d"}}%;background:#5d4040;">&nbsp;</div>
       </div>
       {{/list_poll_answers}}
   </div>
   
   <ul style="border-bottom: none; margin-bottom: 0">
       <li class="section-name">Дата пачатку: {{ $gimme->poll->date_begin|date_format }}</li>
       <li class="section-name">Дата спынення: {{ $gimme->poll->date_end|date_format }}</li>
       <li class="section-name">Дазволенае: {{ if $gimme->poll->is_current }} Так {{ else }} Не {{ /if }}</li>
       <li class="section-name">Галасоў карыстача / усяго галасоў: {{ $gimme->poll->votes_per_user }}/{{ $gimme->poll->user_vote_count }}</li>
       <li class="section-name">Агульная колькасць галасоў: {{ $gimme->poll->votes }}</li>
   </ul>
</ul>
</div>
   {{ if $gimme->current_list->at_end }}

                    <div class="backandforw">
                      <p>{{ if $gimme->current_list->has_previous_elements }}<a href="{{ uripath options="template archive-poll.tpl" }}?{{ urlparameters options="previous_items" }}">Назад</a>{{ else }}Назад{{ /if }}
                      <span class="middot">+</span>
                      {{ if $gimme->current_list->has_next_elements }}<a href="{{ uri options="next_items" }}">Вперед</a>{{ else }}Вперед{{ /if }}</p>
                    </div><!-- /.backandforw -->

   {{ /if }}

{{ /list_polls }}
{{ /local }}
</div>

    </div>
    <div class="column-2 clearfix">{{include file="column-2.tpl"}}</div>
    <div class="center-links">{{include file="front-center-links.tpl"}}</div>
  </div>
  <div id="footer">{{include file="_footer.tpl"}}</div>
</div>
</body>
</html>
