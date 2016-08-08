            <div id="article-itself">

<script language="JavaScript" type="text/javascript">
<!--
function submitForm() {
window.open ("http://{{ $gimme->publication->site }}/?tpl=120", "NewWindow","menubar=0,resizable=1,width=350,height=350");
document.myform.submit();
}
//-->
</script>              
              
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

                      <input class="right" type="image" onClick="javascript:submitForm();return false;" name="poll-vote" src="/templates/images/poll-vote.png" />
                    <div id="search-results">
                      <p class="resultofsearch"><a href="{{ uri options="template poll-results.tpl" }}&f_poll_nr={{ $gimme->poll->number }}&f_poll_language_id=15">Результаты опроса</a></p>
                      <p class="resultofsearch"><a href="{{ uri options="template archive.tpl" }}#poll-archive">Архив опросов</a></li>
                    </div>                      
                        <div class="clear"></div>
                    </form>  
            
            </div><!-- article-itself -->
