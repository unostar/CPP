{{ dynamic }}
<div id="section-name"><p>Фотаапытанн</p></div>
<div id="story" class="pollbox">

<script language="JavaScript" type="text/javascript">
<!--
function submitForm() {
window.open ("http://{{ $gimme->publication->site }}/?tpl=98", "NewWindow","menubar=0,resizable=1,width=350,height=350");
document.myform.submit();
}
//-->
</script>

 <p class="question">{{ $gimme->poll->question }}</p> 

<form id="poll-form" action="" name="myform" target="NewWindow">
<input type="hidden" name="f_poll" value="1" />
<input type="hidden" name="f_poll_nr" value="{{ $gimme->poll->number }}" />
<input type="hidden" name="f_poll_language_id" value="{{ $gimme->poll->language_id }}" />
<input type="hidden" name="f_poll_mode" value="standard" />
<input type="hidden" name="tpl" value="98" />
            
{{ list_poll_answers }} 
<div class="poll-item">{{ pollanswer_edit }}{{ $gimme->pollanswer->answer }}{{ /pollanswer_edit }}</div>
{{ /list_poll_answers }}

<input id="poll-button" type="submit" onClick="javascript:submitForm();return false;" value="ПРАГАЛАСАВАць" />
<a href="{{ uri options="template poll-results.tpl" }}&amp;f_poll_nr={{ $gimme->poll->number }}&amp;f_poll_language_id={{ $gimme->poll->language_id }}">Вынікі</a>|<a href="{{ uri options="template poll-archive.tpl" }}">Усе апытванні</a>
        </form>

</div><!-- /#story -->

<div class="meat-item">
  <div class="meat-item-inner">

    {{ include file="search-advanced.tpl" }}

  </div>
</div>
{{ /dynamic }}