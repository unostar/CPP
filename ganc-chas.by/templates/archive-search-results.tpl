{{if $smarty.get.page}}
  {{assign var="page" value=$smarty.get.page}}
{{else}}
  {{assign var="page" value="1"}}
{{/if}}

{{if $smarty.get.date}}
  {{assign var="get_date" value=$smarty.get.date|camp_date_format:"%Y-%m-%d"}}
  <div class="header-diag">Материалы за {{$get_date|camp_date_format:"%e %M %Y"}}</div>

  <div class="navigation">
  {{list_articles columns="15" constraints="type is article issue greater 1 section smaller_equal 120 publish_date is `$get_date`"}}
  {{if $gimme->current_list->count > 15}}
    {{if $gimme->current_list->column==1}}
      {{if $gimme->current_list->row==$page}}<span class="ui-state-highlight">{{$gimme->current_list->row}}</span>
      {{else}}<a class="ui-state-default" href="/by/page/archive?date={{$get_date}}&page={{$gimme->current_list->row}}">{{$gimme->current_list->row}}</a>{{/if}}
    {{/if}}
  {{/if}}
  {{/list_articles}}
  </div>

  {{list_articles columns="15" constraints="type is article issue greater 1 section smaller_equal 120 publish_date is `$get_date`"}}
    {{if $gimme->current_list->count > 15}}{{assign var="navigation" value=true}}{{/if}}
  {{if $gimme->current_list->row==$page}}
    {{if $gimme->current_list->column==1}}
      <dl class="b-comm">
    {{/if}}
      {{if $gimme->section->name != $section}}<dt>{{$gimme->section->name}}</dt>{{/if}}
        <dd><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></dd>
      {{assign var="section" value=$gimme->section->name}}
    {{if $gimme->current_list->column==15}}
      </dl>
    {{/if}}
  {{/if}}
  {{/list_articles}}
  {{if $gimme->prev_list_empty}}<em>Материалы не найдены.</em>{{/if}}

  <div class="navigation">
  {{list_articles columns="15" constraints="type is article issue greater 1 section smaller_equal 120 publish_date is `$get_date`"}}
  {{if $gimme->current_list->count > 15}}
    {{if $gimme->current_list->column==1}}
      {{if $gimme->current_list->row==$page}}<span class="ui-state-highlight">{{$gimme->current_list->row}}</span>
      {{else}}<a class="ui-state-default" href="/by/page/archive?date={{$get_date}}&page={{$gimme->current_list->row}}">{{$gimme->current_list->row}}</a>{{/if}}
    {{/if}}
  {{/if}}
  {{/list_articles}}
  </div>

{{elseif $smarty.get.show == "poll"}}
  <div class="header-diag">Архив голосований</div>
  <dl class="ui-accordion ui-widget">
  {{list_polls length="3" order="bynumber desc"}}
    <dt class="ui-accordion-header ui-state-default">{{$gimme->poll->question}}</dt>
    <dd class="ui-accordion-content">
    <p><b>Усяго прагаласавала: {{$gimme->poll->votes}}</b></p><br />
    {{list_poll_answers}}<div>{{$gimme->pollanswer->answer}} - {{$gimme->pollanswer->votes}}<div class="poll-result ui-state-highlight" style="width:{{$gimme->pollanswer->percentage|string_format:"%d"}}%;">{{$gimme->pollanswer->percentage|string_format:"%d"}}%</div></div>{{/list_poll_answers}}
    </dd>
  {{/list_polls}}
  </dl>

{{elseif $gimme->search_articles_action->defined}}
  <div class="header-diag">Результаты поиска {{if $gimme->search_articles_action->search_phrase}}"{{$gimme->search_articles_action->search_phrase}}"{{/if}}</div>

  <div class="navigation">
  {{list_search_results columns="10" order="bypublishdate desc"}}
  {{if $gimme->current_list->count > 10}}
    {{if $gimme->current_list->column == 1}}
      {{if $gimme->current_list->row==$page}}<span class="ui-state-highlight">{{$gimme->current_list->row}}</span>
      {{else}}<a class="ui-state-default" href="/by/page/archive?page={{$gimme->current_list->row}}&tpl={{$gimme->template->identifier}}&f_search_articles=true&f_search_level={{$gimme->search_articles_action->search_level}}&f_search_keywords={{$gimme->search_articles_action->search_phrase}}&f_search_issue={{$gimme->search_articles_action->search_issue}}&f_search_section={{$gimme->search_articles_action->search_section}}&f_search_start_date={{$gimme->search_articles_action->start_date}}&f_search_end_date={{$gimme->search_articles_action->end_date}}&f_search_topic={{$gimme->search_articles_action->topic_id}}&f_search_scope={{$gimme->search_articles_action->scope}}">{{$gimme->current_list->row}}</a>{{/if}}
    {{/if}}
  {{/if}}
  {{/list_search_results}}
  </div>

  {{list_search_results columns="10" order="bypublishdate desc"}}
  {{if $gimme->current_list->row==$page}}
    {{if $gimme->current_list->column==1}}
      <dl class="b-comm">
    {{/if}}
        <dt><span><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></span>&nbsp;(№{{$gimme->issue->name}}({{$gimme->issue->number}}) {{$gimme->article->publish_date|camp_date_format:"%d.%m.%Y"}})</dt>
        <dd>{{$gimme->article->intro|strip_tags:false|strip|truncate:300}}</dd>
    {{if $gimme->current_list->column == 10}}
      </dl>
    {{/if}}
  {{/if}}
  {{/list_search_results}}
  {{if $gimme->prev_list_empty}}<em>Материалы не найдены.</em>{{/if}}

  <div class="navigation">
  {{list_search_results columns="10" order="bypublishdate desc"}}
  {{if $gimme->current_list->count > 10}}
    {{if $gimme->current_list->column == 1}}
      {{if $gimme->current_list->row==$page}}<span class="ui-state-highlight">{{$gimme->current_list->row}}</span>
      {{else}}<a class="ui-state-default" href="/by/page/archive?page={{$gimme->current_list->row}}&tpl={{$gimme->template->identifier}}&f_search_articles=true&f_search_level={{$gimme->search_articles_action->search_level}}&f_search_keywords={{$gimme->search_articles_action->search_phrase}}&f_search_issue={{$gimme->search_articles_action->search_issue}}&f_search_section={{$gimme->search_articles_action->search_section}}&f_search_start_date={{$gimme->search_articles_action->start_date}}&f_search_end_date={{$gimme->search_articles_action->end_date}}&f_search_topic={{$gimme->search_articles_action->topic_id}}&f_search_scope={{$gimme->search_articles_action->scope}}">{{$gimme->current_list->row}}</a>{{/if}}
    {{/if}}
  {{/if}}
  {{/list_search_results}}
  </div>


{{else}}
  <div class="header-diag">Последние материалы</div>
  <dl class="ui-accordion ui-widget">

    <dt class="ui-accordion-header ui-state-default">Последний выпуск</dt>
    <dd class="ui-accordion-content">
    {{local}}{{set_current_issue}}{{assign var="issn" value=$gimme->issue->number}}{{/local}}
    {{list_articles constraints="type is article issue is $issn section smaller_equal 120"}}
      {{if $gimme->section->name != $section}}{{if $gimme->current_list->index>1}}<br />{{/if}}<p><strong>{{$gimme->section->name}}</strong></p>{{/if}}
      <p><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></p>
      {{assign var="section" value=$gimme->section->name}}
    {{/list_articles}}
    {{if $gimme->prev_list_empty}}<p>Опубликованных статей на найдено.</p>{{/if}}
    </dd>

    {{list_issues length="1" constraints="number smaller $issn" order="byPublishDate desc"}}
    <dt class="ui-accordion-header ui-state-default">Предыдущий выпуск</dt>
    <dd class="ui-accordion-content">
    {{list_articles constraints="type is article section smaller_equal 120"}}
      {{if $gimme->section->name != $section}}{{if $gimme->current_list->index>1}}<br />{{/if}}<p><strong>{{$gimme->section->name}}</strong></p>{{/if}}
      <p><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></p>
      {{assign var="section" value=$gimme->section->name}}
    {{/list_articles}}
    {{if $gimme->prev_list_empty}}<p>Опубликованных статей на найдено.</p>{{/if}}
    </dd>
    {{/list_issues}}

    <dt class="ui-accordion-header ui-state-default">Последние PDF-версии газеты</dt>
    <dd class="ui-accordion-content">
      {{list_articles constraints="type is pdf issue greater 1 section is 300 publish_date greater 1900-01-01"}}{{list_article_attachments length="1"}}
        <a href="http://{{$gimme->publication->site}}{{uri options="articleAttachment"}}">PDF №{{$gimme->issue->name}}({{$gimme->issue->number}}) ад {{$gimme->issue->publish_date|camp_date_format:"%d.%m.%Y"}}</a><br />
      {{/list_article_attachments}}{{/list_articles}}
    </dd>

    <dt class="ui-accordion-header ui-state-default">Последние голосования</dt>
    <dd class="ui-accordion-content">
      {{list_polls length="3" order="bynumber desc"}}
        {{if $gimme->current_list->index>1}}<br /><br />{{/if}}<p><b>{{$gimme->poll->question}}</b></p><br />
        {{list_poll_answers}}<p>
        <div>{{$gimme->pollanswer->answer}}
          <div class="poll-result ui-state-highlight" style="width:{{$gimme->pollanswer->percentage|string_format:"%d"}}%;">{{$gimme->pollanswer->percentage|string_format:"%d"}}%</div>
        </div></p>
        {{/list_poll_answers}}
      {{/list_polls}}
    </dd>

  </dl>
{{/if}}