{{list_polls length="1" order="bynumber desc"}}
{{if !$gimme->poll_action->defined}}
<h4>АПЫТАННЕ</h4>
<p class="poll-question">{{$gimme->poll->question}}</p>
<div id="poll" class="poll">
{{/if}}
{{if $gimme->poll->is_votable && !$gimme->poll_action->defined}}
  {{poll_form template="poll.tpl" submit_button=false}}
  {{list_poll_answers order="byOrder asc"}}
  {{pollanswer_edit}}{{$gimme->pollanswer->answer}}<br />
  {{/list_poll_answers}}
  <input type="submit" id="submit_poll" class="button" value="Адказаць" />
  {{/poll_form}}
{{else}}
  <p>Усяго прагаласавалі: {{$gimme->poll->votes}}</p>
  {{list_poll_answers order="byOrder asc"}}
  <div class="answer">{{$gimme->pollanswer->percentage|string_format:"%d"}}%: {{ $gimme->pollanswer->answer }}
  <div style="width:{{$gimme->pollanswer->percentage|string_format:"%d"}}%;background:#5d4040;">&nbsp;</div>
  </div>
  {{/list_poll_answers}}
{{/if}}
<a style="float: right; width: 110px; display: block" href="{{ uri options="issue" }}?tpl=288">Архіў апытанняў</a>
{{if !$gimme->poll_action->defined}}
</div>
{{/if}}
{{/list_polls}}