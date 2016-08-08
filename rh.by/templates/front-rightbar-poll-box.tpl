<div class="type-o-cont">Галасаванне</div>

<div class="divcont-tight" id="poll-box">

<script language="JavaScript" type="text/javascript">
<!--
function submitForm() {
window.open ("http://village.omniton.net/?tpl=92", "NewWindow","menubar=0,resizable=1,width=350,height=250");
document.myform.submit();
}
//-->
</script>

{{ list_polls name="last" length="1" order='bynumber desc' }}
 <p class="question">{{ $gimme->poll->question }}</p> 

<form id="poll-form" action="" name="myform" target="NewWindow">
<input type="hidden" name="f_poll" value="1" />
<input type="hidden" name="f_poll_nr" value="{{ $gimme->poll->number }}" />
<input type="hidden" name="f_poll_language_id" value="{{ $gimme->poll->language_id }}" />
<input type="hidden" name="f_poll_mode" value="standard" />
<input type="hidden" name="tpl" value="92" />
            
{{ list_poll_answers }} 
<div class="poll-item">{{ pollanswer_edit }}{{ $gimme->pollanswer->answer }}{{ /pollanswer_edit }}</div>
{{ /list_poll_answers }}

<input id="poll-button" type="submit" onClick="javascript:submitForm();return false;" value="ПРАГАЛАСАВАць" />
<a href="{{ uri options="template poll-results.tpl" }}">Вынікі</a>|<a href="{{ uri options="template poll-archive.tpl" }}">Усе галасаванні</a>
        </form>
{{ /list_polls }}
</div><!-- /#poll-box -->