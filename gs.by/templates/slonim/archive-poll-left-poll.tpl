<script language="javascript" src="/templates/slonim/javascript/prototype.js" type="text/javascript"></script>
              
<div class="poll-wrap"> 

{{ poll_form template='slonim/right-1-poll.tpl' submit_button=false ajax=true }} 
  <p>{{ $gimme->poll->question }}</p>
  Проголосовало: {{ $gimme->poll->votes }}<br/>
  <div style="height: 10px;" >
</div>
{{ list_poll_answers order="byvalue desc" }}
       
         {{ pollanswer_ajax }}
<div class="poll_bar" style="width:{{ $gimme->pollanswer->percentage }}%;" >
</div>
<div style="clear: both"></div>
<p style="padding:0;"><a href="#" onclick="return false;">{{ $gimme->pollanswer->answer }}
  ({{ $gimme->pollanswer->percentage|string_format:"%d" }})%</a></p>
{{ /pollanswer_ajax }}
<div style="clear: both; height: 10px"></div>
{{ /list_poll_answers }}
           
{{ /poll_form }}
</div>  
             </div> 