<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="/templates/newspaper/styles/tstyl.css" rel="stylesheet" type="text/css" />
</head>
<body style="padding:5px;font-size:12px;">
<div style="width:260px;font-size:12px;font-family:Arial, Helvetica, sans-serif;">
{{ assign var='display_poll_result' value=true }}
<!-- poll -->
        {{ if $gimme->poll->user_vote_count >= $gimme->poll->votes_per_user }}
            <p>Вы ужо прагаласавалi</p>
        {{ /if }}

    {{ if $display_poll_result }}
    
       <p>Прагаласавала: {{ $gimme->poll->votes }}</p><br />
        {{ list_poll_answers order="byvalue desc" }} 
            {{ $gimme->pollanswer->percentage|string_format:"%d" }}%: {{ $gimme->pollanswer->answer }}
            <div style="clear:left;width:{{ $gimme->pollanswer->percentage|string_format:"%d" }}%;background:url(/templates/newspaper/images/poll-bar.gif) repeat-x;line-height:15px;height:15px;">&nbsp;</div>
            <br>
        {{ /list_poll_answers }}
        
    {{ /if }}

      <!-- end poll -->
</div>
</body>
</html>