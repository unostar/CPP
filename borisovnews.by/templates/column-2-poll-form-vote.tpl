<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>"Борисовкие Новости"</title>
<style type="text/css">
.box-305{
font-size:10px;
}
</style>
</head>
<body style="padding:5px;">
<div style="width:305px;">
<!-- poll -->
      <div class="box-305">
        <p style="font-size:14px;font-weight:bold;line-height:18px;">{{ $gimme->poll->question }}</p>
        <div class="center-content-blank clearfix" style="width:260px;font-size:12px;font-family:Arial, Helvetica, sans-serif;padding:10px;">

{{ if $gimme->poll_action->ok }}
        
            <p>Спасибо за участие в опросе.</p>
            {{ assign var='display_poll_result' value=true }}
        
{{ else $gimme->poll_action->is_error }}
        
           {{* <p>Ошибка в процессе опроса  $gimme->poll_action->error_message </p>*}}
            {{ assign var='display_poll_result' value=true }}

{{ /if }}
        {{ if $gimme->poll->user_vote_count >= $gimme->poll->votes_per_user }}
            <p>Вы уже проголосовали</p>
        {{ /if }}

    {{ if $display_poll_result }}
    
       <p>Проголосовало: {{ $gimme->poll->votes }}</p><br />
        {{ list_poll_answers }} 
            {{ $gimme->pollanswer->percentage|string_format:"%d" }}%: {{ $gimme->pollanswer->answer }}
            <div style="clear:left;width:{{ $gimme->pollanswer->percentage|string_format:"%d" }}%;background:#999;">&nbsp;</div>
            <br>
        {{ /list_poll_answers }}
        
    {{ /if }}

        </div>
        <div class="bottom-blank"><span>&nbsp;</span></div>
      </div>
      <!-- end poll -->
</div>
</body>
</html>