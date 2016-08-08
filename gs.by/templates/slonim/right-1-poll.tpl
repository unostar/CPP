{{list_polls length="1" order="bynumber desc"}}
{{if !$gimme->poll_action->defined}}
<div id="poll" class="poll-wrap">
<p>{{ $gimme->poll->question }}</p>
{{/if}}
{{if $gimme->poll->is_votable && !$gimme->poll_action->defined}}
  {{poll_form template="slonim/right-1-poll.tpl" submit_button=false}}
  {{list_poll_answers order="byOrder asc"}}
  <p class="answer">{{pollanswer_edit}}{{$gimme->pollanswer->answer}}</p>
  {{/list_poll_answers}}
  <input type="submit" id="submit_poll" class="button" value="Проголосовать" />
  {{/poll_form}}
{{else}}
  <p>Проголосовало: {{$gimme->poll->votes}}</p>
  {{list_poll_answers order="byOrder asc"}}
  <div class="poll_bar" style="width:{{ $gimme->pollanswer->percentage }}%;" ></div>
  <p>{{ $gimme->pollanswer->answer }} ({{ $gimme->pollanswer->percentage|string_format:"%d" }})%</p>
  {{/list_poll_answers}}
{{/if}}
<p><a href="{{ uri options="issue" }}?tpl=113">Архив опросов</a></p>
{{if !$gimme->poll_action->defined}}
</div>
{{/if}}
{{/list_polls}}
