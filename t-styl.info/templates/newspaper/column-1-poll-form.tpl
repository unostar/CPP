         <!-- POLL CONTENT BEGIN -->
{{ local }}
    {{ unset_topic }}
<script language="JavaScript"  type="text/javascript">
<!--

function submitForm() {
window.open ("http://{{$gimme->publication->site}}{{ uri options="template newspaper/column-1-poll-form-vote.tpl"}}", "NewWindow","menubar=0,resizable=1,width=350,height=250");
document.myform.submit();
}

//-->
        </script>
<div class="poll-block">
	    <p class="rest-news">апытанне</p>

{{ list_polls name="last" length="1" order='bynumber DESC' }}
<div class="intro">{{ $gimme->poll->question }}</div><br/>
    
    <form action="" name="myform" target="NewWindow">
<input type="hidden" name="f_poll" value="1" />
<input type="hidden" name="f_poll_nr" value="{{ $gimme->poll->number }}" />
<input type="hidden" name="f_poll_language_id" value="{{ $gimme->poll->language_id }}" />
<input type="hidden" name="f_poll_mode" value="standard" />
<input type="hidden" name="tpl" value="191" />
            {{ list_poll_answers order="byvalue desc" }} 
                {{ pollanswer_edit }}
                      {{ $gimme->pollanswer->answer }}
                {{ /pollanswer_edit }}
                <br/>
            {{ /list_poll_answers }}
<input type="submit" name="sa" onclick="javascript:submitForm();return false;" value="&nbsp;" class="button" />
        </form>
        
<p class="all email">цi <a href="{{ uri options="template newspaper/column-1-poll-form-results.tpl" }}">глядзець статыстыку</a></p>
{{ /list_polls }} 
</div>
{{ /local }}
