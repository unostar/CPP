{{list_polls length="1" order="bynumber desc"}}
{{if !$gimme->poll_action->defined}}
  <div class="b-maincontent">
  <h2 class="header-block"><b class="bg-header-block-l"></b><b class="bg-header-block-r"></b><span class="header-block-i">Апытанне</span></h2>
  <div class="b-maincontent-il"><div class="b-maincontent-ir"><div class="b-maincontent-i">
  <div class="b-maincontent-n-i">
  <div class="f-quest_header">{{$gimme->poll->question}}</div>
  <div id="poll" class="f-quest">
{{/if}}
{{if $gimme->poll->is_votable && !$gimme->poll_action->defined}}
  {{poll_form template="right-column-block-poll.tpl" submit_button=false}}
  {{list_poll_answers}}
    <div class="f-quest_row"><label>{{pollanswer_edit}} {{$gimme->pollanswer->answer}}</label></div>
  {{/list_poll_answers}}
  <div class="f-quest_bottom"><span class="button-main"><input type="submit" id="submit_poll" class="button-main-i" value="Галасаваць" /></span> ці &nbsp;<a href="#results">глядзець вынік</a></div>
  {{/poll_form}}
{{else}}
  {{list_poll_answers}}
    <div class="f-quest_row">{{ $gimme->pollanswer->answer }}
      <div class="ui-state-default" style="width:{{$gimme->pollanswer->percentage|string_format:"%d"}}%;">{{$gimme->pollanswer->percentage|string_format:"%d"}}%</div>
    </div>
  {{/list_poll_answers}}
  <div class="f-quest_row">Усяго прагаласавалi: {{$gimme->poll->votes}}</div>
{{/if}}
<div><a href="/by/page/archive?show=poll">глядзець архіў апытанняў</a></div>
{{if !$gimme->poll_action->defined}}
</div>
</div>
</div></div></div>
<span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div>
{{/if}}
{{/list_polls}}
