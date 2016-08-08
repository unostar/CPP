{{list_polls length="1" order="bynumber desc"}}

{{if !$gimme->poll_action->defined}}
<div class="header-diag">ГОЛОСОВАНИЕ</div>
<span class="header-litbol">{{$gimme->poll->question}}</span>
<div id="poll" class="b-voting">
{{/if}}

{{if $gimme->poll->is_votable && !$gimme->poll_action->defined}}
  {{poll_form template="block-right-column-poll.tpl" submit_button=false}}
  {{list_poll_answers}}
    <div><label>{{pollanswer_edit}} {{$gimme->pollanswer->answer}}</label></div>
  {{/list_poll_answers}}
  <div><input type="submit" id="submit_poll" class="button-greent1" value="ГОЛОСОВАТЬ" /></div>
  <div><a href="#results">Посмотреть результаты</a></div>
  {{/poll_form}}
{{else}}
  <span class="b-article_name">Итоги голосования</span>
  {{list_poll_answers}}
    <div>{{ $gimme->pollanswer->answer }}
      <div class="poll-result ui-state-highlight" style="width:{{$gimme->pollanswer->percentage|string_format:"%d"}}%;">{{$gimme->pollanswer->percentage|string_format:"%d"}}%</div>
    </div>
  {{/list_poll_answers}}
{{/if}}
<div><a href="/by/page/archive?show=poll">Архив голосований</a></div>

{{if !$gimme->poll_action->defined}}
</div>
{{/if}}

{{/list_polls}}
