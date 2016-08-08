{{list_polls length="1" order="bynumber desc"}}
{{if !$gimme->poll_action->defined}}
<div class="poll-box">
<p class="poll-title">ОПРОС</p>
<p class="poll-question">{{ $gimme->poll->question }}</p>
<div id="pollform">
{{/if}}
{{if $gimme->poll->is_votable && !$gimme->poll_action->defined}}
  {{poll_form template="poll.tpl" submit_button=false}}
  {{list_poll_answers order="byOrder asc"}}
  <p class="poll-answer">{{pollanswer_edit}} {{$gimme->pollanswer->answer}}</p>
  {{/list_poll_answers}}
  <p class="poll-answer">&nbsp;</p>
  <input type="image" id="submit_poll" src="/templates/images/poll-button.png" value="" />
  <p class="poll-results">или &nbsp;&nbsp;<a href="#pollresults">смотреть результаты</a></p>
  {{/poll_form}}
{{else}}
  <p><em>Проголосовало: {{ $gimme->poll->votes }}</em></p><br />
  {{list_poll_answers order="byOrder asc"}}
  <p class="poll-result-line">{{$gimme->pollanswer->percentage|string_format:"%d"}}%: {{ $gimme->pollanswer->answer }}
  <div style="clear:left;width:{{$gimme->pollanswer->percentage|string_format:"%d"}}%;background:#999;">&nbsp;</div>
  </p>
  {{/list_poll_answers}}
{{/if}}
{{if !$gimme->poll_action->defined}}
</div></div>
{{/if}}
{{/list_polls}}
