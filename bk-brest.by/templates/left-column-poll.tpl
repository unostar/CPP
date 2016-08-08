{{list_polls length="1" order="bynumber desc"}}

{{if !$gimme->poll_action->defined}}
<div class="b-sec b-vote">
	<div class="b-bheader_black"><span>опрос</span></div>
	<div class="b-vote_quest">{{$gimme->poll->question}}</div>
  <div id="poll">
{{/if}}

{{if $gimme->poll->user_vote_count >= $gimme->poll->votes_per_user || $gimme->poll_action->ok}}
  <div class="b-vote_row"><p>Спасибо за участие в голосовании!</p></div>
{{elseif $gimme->poll_action->is_error}}
  {{$gimme->poll_action->error_message}}
{{/if}}

{{if $gimme->poll->is_votable && !$gimme->poll_action->defined}}
  {{poll_form template="left-column-poll.tpl" submit_button=false}}
  {{list_poll_answers order="byvalue desc"}}
    <div class="b-vote_row"><label>{{pollanswer_edit}}{{$gimme->pollanswer->answer}}</label></div>
  {{/list_poll_answers}}
  <div class="g-clean"><input type="submit" id="submit_poll" class="submit-t1" value="Голосовать" /></div>
  {{/poll_form}}
{{else}}
  <div class="b-vote_row"><p>Всего проголосовали: {{$gimme->poll->votes}}</p></div>
  {{list_poll_answers}}
    <div class="b-vote_row">
      <div style="width:{{$gimme->pollanswer->percentage|string_format:"%d"}}%;background-color:#0076C9;">&nbsp;</div>
      {{$gimme->pollanswer->percentage|string_format:"%d"}}%: {{ $gimme->pollanswer->answer }}
    </div>
  {{/list_poll_answers}}
{{/if}}

{{if !$gimme->poll_action->defined}}
  </div>
	<div class="b-vote_links"><a href="/ru/page/archive/?type=poll">Архив опросов</a></div>
</div>
{{/if}}

{{/list_polls}}
