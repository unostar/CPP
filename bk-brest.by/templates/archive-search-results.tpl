{{dynamic}}
{{if $smarty.get.date}}
  {{assign var="get_date" value=$smarty.get.date|camp_date_format:"%Y-%m-%d"}}
  <div class="b-nfeed">
  <span class="b-subheader">Материалы за {{$get_date|camp_date_format:"%e %M %Y"}}</span>
  {{list_issues constraints="number greater 1 publish_date is $get_date"}}
  <div class="b-nfeed_mainheader"><a href="{{uri options="issue"}}">Выпуск {{$gimme->issue->name}} от {{$gimme->issue->publish_date|camp_date_format:"%d.%m.%Y"}}</a></div>
  {{/list_issues}}
  {{list_articles length="20" constraints="issue greater 1 publish_date is `$get_date`" ignore_section="true"}}
  {{if $gimme->current_list->at_beginning}}
    <ul class="g-none list-linkslightgray">
  {{/if}}
  {{if $gimme->section->name != $section}}<div class="b-bheader_black" style="margin-top:20px"><span><b>{{$gimme->section->name}}</b></span></div>{{/if}}
  <li><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></li>
  {{assign var="section" value=$gimme->section->name}}
  {{if $gimme->current_list->at_end}}
    </ul>
      {{if $gimme->current_list->has_previous_elements || $gimme->current_list->has_next_elements}}
      <div class="b-nazvper">
        {{if $gimme->current_list->has_previous_elements}}<a href="/ru/page/archive/?{{urlparameters options="previous_items"}}"  class="b-nazvper_previous">Назад</a>{{else}}<span>Назад</span>{{/if}}&nbsp;|&nbsp;
        {{if $gimme->current_list->has_next_elements}}<a href="/ru/page/archive/?{{urlparameters options="next_items"}}" class="b-nazvper_next">Вперёд</a>{{else}}<span>Вперёд</span>{{/if}}
      </div>
      {{/if}}
  {{/if}}
  {{/list_articles}}
  </div>

{{elseif $smarty.get.type == "pdf"}}
  <div class="b-nfeed">
  <span class="b-subheader">Архив PDF версий издания</span>
  {{list_articles length="20" constraints="type is pdf issue greater 1 section is 200"}}
  {{if $gimme->current_list->at_beginning}}
  <ul class="g-none list-linkslightgray">
  {{/if}}
  {{list_article_attachments length="1"}}
  <li><a href="{{uri options="articleAttachment"}}">{{$gimme->issue->name}}</a></li>
  {{/list_article_attachments}}
  {{if $gimme->current_list->at_end}}
  </ul>
    {{if $gimme->current_list->has_previous_elements || $gimme->current_list->has_next_elements}}
      <div class="b-nazvper">
        {{if $gimme->current_list->has_previous_elements}}<a href="/ru/page/archive/?{{urlparameters options="previous_items"}}"  class="b-nazvper_previous">Назад</a>{{else}}<span>Назад</span>{{/if}}&nbsp;|&nbsp;
        {{if $gimme->current_list->has_next_elements}}<a href="/ru/page/archive/?{{urlparameters options="next_items"}}" class="b-nazvper_next">Вперёд</a>{{else}}<span>Вперёд</span>{{/if}}
      </div>
    {{/if}}
  {{/if}}
  {{/list_articles}}
  </div>

{{elseif $smarty.get.type == "poll"}}
  <div class="b-nfeed">
  <span class="b-subheader">Архив Опросов</span>
  {{list_polls length="20" order="bynumber desc"}}
  {{if $gimme->current_list->at_beginning}}
  <ul class="g-none list-linkslightgray">
  {{/if}}
  <li><a href="#poll_results">{{$gimme->poll->title}}</a>
    <div class="poll_results" style="display:none">
    <div class="b-vote_quest">{{$gimme->poll->question}}</div>
    <div class="b-vote_row"><p>Всего проголосовали: {{$gimme->poll->votes}}</p></div>
    {{list_poll_answers}}
      <div class="b-vote_row">
        <div style="width:{{$gimme->pollanswer->percentage|string_format:"%d"}}%;background-color:#0076C9;">&nbsp;</div>
        {{$gimme->pollanswer->percentage|string_format:"%d"}}%: {{ $gimme->pollanswer->answer }}
      </div>
    {{/list_poll_answers}}
    </div>
  </li>
  {{if $gimme->current_list->at_end}}
  </ul>
    {{if $gimme->current_list->has_previous_elements || $gimme->current_list->has_next_elements}}
      <div class="b-nazvper">
        {{if $gimme->current_list->has_previous_elements}}<a href="/ru/page/archive/?{{urlparameters options="previous_items"}}"  class="b-nazvper_previous">Назад</a>{{else}}<span>Назад</span>{{/if}}&nbsp;|&nbsp;
        {{if $gimme->current_list->has_next_elements}}<a href="/ru/page/archive/?{{urlparameters options="next_items"}}" class="b-nazvper_next">Вперёд</a>{{else}}<span>Вперёд</span>{{/if}}
      </div>
    {{/if}}
  {{/if}}
  {{/list_polls}}
  </div>

{{elseif $gimme->search_articles_action->defined}}
  <div class="b-nfeed">
  <span class="b-subheader">Результаты поиска:</span>
  {{list_search_results length="10" order="bypublishdate desc"}}
  {{if $gimme->current_list->at_beginning}}
  <ul class="g-none list-linkslightgray">
  {{/if}}
  <li>
    <a href="{{uri options="article"}}">{{$gimme->article->name}}</a>
    <span><p class="b-vnimaniya_credits">{{$gimme->article->publish_date|camp_date_format:"%d.%m.%Y"}}</p>{{$gimme->article->intro|strip_tags:false|strip|truncate:300:"..."}}</span>
  </li>
  {{if $gimme->current_list->at_end}}
  </ul>
    {{if $gimme->current_list->has_previous_elements || $gimme->current_list->has_next_elements}}
      <div class="b-nazvper">
        {{if $gimme->current_list->has_previous_elements}}<a href="/ru/page/archive/?{{urlparameters options="previous_items"}}"  class="b-nazvper_previous">Назад</a>{{else}}<span>Назад</span>{{/if}}&nbsp;|&nbsp;
        {{if $gimme->current_list->has_next_elements}}<a href="/ru/page/archive/?{{urlparameters options="next_items"}}" class="b-nazvper_next">Вперёд</a>{{else}}<span>Вперёд</span>{{/if}}
      </div>
    {{/if}}
  {{/if}}
  {{/list_search_results}}
  {{if $gimme->prev_list_empty}}<p>Ничего не найдено</p>{{/if}}
  </div>

{{else}}
  <div class="b-nfeed">
  <span class="b-subheader">Последние Выпуски</span>
  {{list_issues length="10" constraints="number greater 1" order="bypublishdate desc"}}
  {{if $gimme->current_list->at_beginning}}
  <ul class="g-none list-linkslightgray">
  {{/if}}
  <li><a href="{{uri options="issue"}}">{{$gimme->issue->name}} от {{$gimme->issue->publish_date|camp_date_format:"%d.%m.%Y"}}</a></li>
  {{if $gimme->current_list->at_end}}
  </ul>
    {{if $gimme->current_list->has_previous_elements || $gimme->current_list->has_next_elements}}
      <div class="b-nazvper">
        {{if $gimme->current_list->has_previous_elements}}<a href="/ru/page/archive/?{{urlparameters options="previous_items"}}"  class="b-nazvper_previous">Назад</a>{{else}}<span>Назад</span>{{/if}}&nbsp;|&nbsp;
        {{if $gimme->current_list->has_next_elements}}<a href="/ru/page/archive/?{{urlparameters options="next_items"}}" class="b-nazvper_next">Вперёд</a>{{else}}<span>Вперёд</span>{{/if}}
      </div>
    {{/if}}
  {{/if}}
  {{/list_issues}}
  </div>

{{/if}}
{{/dynamic}}