{{dynamic}}
{{list_polls length="1" constraints="is_current is true" order="bynumber desc"}}
{{if $gimme->current_list->at_beginning && !$gimme->poll_action->defined}}
<div class="poll-block"><h3 class="poll">Опрос</h3><div id="poll" class="poll">
{{/if}}

<p style="font-size:12px;margin:0 0 10px 0;">{{$gimme->poll->question}}</p>

{{if $gimme->poll->user_vote_count >= $gimme->poll->votes_per_user || $gimme->poll_action->ok}}
  <p>Спасибо за участие в голосовании!</p>
{{elseif $gimme->poll_action->is_error}}
  <p>{{$gimme->poll_action->error_message}}</p>
{{/if}}

{{if $gimme->poll->is_votable && !$gimme->poll_action->defined}}
  {{poll_form template="front-column-1-poll.tpl" submit_button=false}}
  {{list_poll_answers }}
    <div class="poll_answers"><label>{{pollanswer_edit}}{{$gimme->pollanswer->answer}}</label></div>
  {{/list_poll_answers}}
  <input type="submit" id="submit_poll" class="button" value="Голосовать" />
  {{/poll_form}}
{{else}}
  <p style="margin:0">Проголосовали: {{$gimme->poll->votes}}</p>
  {{list_poll_answers}}
    <div class="poll_answers">
      <div class="poll_bar" style="width:{{$gimme->pollanswer->percentage|string_format:"%d"}}%;">&nbsp;</div>
      {{$gimme->pollanswer->percentage|string_format:"%d"}}%: {{ $gimme->pollanswer->answer }}
    </div>
  {{/list_poll_answers}}
{{/if}}

{{if $gimme->current_list->at_end && !$gimme->poll_action->defined}}
<p><a href="{{ uri options="template archive-poll.tpl" }}">Архив опросов</a></p>
</div></div>
{{/if}}
{{/list_polls}}
{{/dynamic}}
