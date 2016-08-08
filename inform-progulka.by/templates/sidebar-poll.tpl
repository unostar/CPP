<div class="full-sbdiv">
              <img alt="“ПОГОВОРИМ”  (ОПРОС ЧИТАТЕЛЕЙ)" src="/templates/images/poll-title.png" />
              <div id="poll-box">
              
<script language="JavaScript" type="text/javascript">
<!--
function submitForm() {
window.open ("http://{{ $gimme->publication->site }}/?tpl=120", "NewWindow","menubar=0,resizable=1,width=350,height=350");
document.myform.submit();
}
//-->
</script>              
              
              {{ list_polls name="poll" length="1" order='bynumber desc' }}
                  <div id="poll-question">{{ $gimme->poll->question }}</div>
                  <form name="poll" action="" target="NewWindow">
                  <input type="hidden" name="f_poll" value="1" />
                  <input type="hidden" name="f_poll_nr" value="{{ $gimme->poll->number }}" />
                  <input type="hidden" name="f_poll_language_id" value="{{ $gimme->poll->language_id }}" />
                  <input type="hidden" name="f_poll_mode" value="standard" />
                  <input type="hidden" name="tpl" value="120" />
                  {{ list_poll_answers }} 
                  <div class="poll-item">{{ pollanswer_edit }}{{ $gimme->pollanswer->answer }}</div>
                  {{ /list_poll_answers }}
                    
                      <ul class="left">
                        <li><a href="{{ uri options="template poll-results.tpl" }}">Результаты опроса</a></li>
                        <li><a href="{{ uri options="template archive.tpl" }}#poll-archive">Архив опросов</a></li>
                      </ul>
                      <input class="right" type="image" onClick="javascript:submitForm();return false;" name="poll-vote" src="/templates/images/poll-vote.png" />
                        <div class="clear"></div>
                    </form>
                    {{ /list_polls }}
                </div><!-- /#poll-box -->
            </div><!-- /.full-sbdiv -->                                
