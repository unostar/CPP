{{ dynamic }}
<script language="javascript" src="/templates/javascript/prototype.js"></script>
  <div class="poll-wrap">
    {{ poll_form template='archive-poll-form.tpl' submit_button=false ajax=true }}
    <p>{{ $gimme->poll->question }}</p>
    Проголосовало: {{ $gimme->poll->votes }}<br />
    <div style="height: 10px"></div>
      {{ list_poll_answers }}
        {{ pollanswer_ajax }}
          <div class="poll_bar" style="width:{{ $gimme->pollanswer->percentage }}%"></div>
          <div style="clear: both"></div>
          <p style="padding:0">{{ $gimme->pollanswer->answer }} ({{ $gimme->pollanswer->percentage|string_format:"%d" }})%</p>
        {{ /pollanswer_ajax }}
      <div style="clear:both;height:10px"></div>
      {{ /list_poll_answers }}
    {{ /poll_form }}
  </div>
</div>
{{ /dynamic }}