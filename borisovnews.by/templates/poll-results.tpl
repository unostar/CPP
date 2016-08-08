<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<title></title>

<meta name="keywords" content="belarus,news,events,politics,Беларусь,события,обозрения, новости,политика,экономика,Минск" />


{{ include file="_html-head.tpl" }}

</head>
<body>

<div style="width:260px;font-size:12px;font-family:Arial, Helvetica, sans-serif;padding:20px;">
{{ assign var='display_poll_result' value=true }}

    {{ if $display_poll_result }}
    
       <p style="font-size:14px;font-weight:bold;line-height:18px;">{{ $gimme->poll->question }}</p><p><em>Проголосовало: {{ $gimme->poll->votes }}</em><br/><br/></p>
        {{ list_poll_answers  order="byvalue desc"}} 
            {{ $gimme->pollanswer->percentage|string_format:"%d" }}%: {{ $gimme->pollanswer->answer }}
            <div style="clear:left;width:{{ $gimme->pollanswer->percentage|string_format:"%d" }}%;background:#999;">&nbsp;</div>
            <br>
        {{ /list_poll_answers }}
        
    {{ /if }}
</div>
</body>
</html>