{{if $smarty.get.page}}{{assign var="page" value=$smarty.get.page}}{{else}}{{assign var="page" value="1"}}{{/if}}

{{if $smarty.get.date}}
  {{assign var="get_date" value=$smarty.get.date|camp_date_format:"%Y-%m-%d"}}
  <div class="c-archiv"><strong>Артыкулы за {{$get_date|camp_date_format:"%d.%m.%Y"}}</strong>

  <div class="navigation">
  {{list_articles columns="20" constraints="type is article issue greater 1 section smaller 150 publish_date is `$get_date`"}}
  {{if $gimme->current_list->count > 20}}
    {{if $gimme->current_list->column==1}}
      {{if $gimme->current_list->row==$page}}<span class="ui-state-highlight">{{$gimme->current_list->row}}</span>
      {{else}}<a class="ui-state-default" href="/by/page/archive?date={{$get_date}}&page={{$gimme->current_list->row}} #archive-content">{{$gimme->current_list->row}}</a>{{/if}}
    {{/if}}
  {{/if}}
  {{/list_articles}}
  </div>

  <dl>{{list_articles columns="20" constraints="type is article issue greater 1 section smaller 150 publish_date is `$get_date`"}}
  {{if $gimme->current_list->row==$page}}
      {{if $gimme->section->name != $section}}<dt class="selected">{{$gimme->section->name}}</dt>{{/if}}
        <dd style="display:block;"><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}</a></dd>
      {{assign var="section" value=$gimme->section->name}}
  {{/if}}
  {{/list_articles}}
  {{if $gimme->prev_list_empty}}<dt class="selected">Матэрыялы не знойдзены.</dt>{{/if}}</dl>

  <div class="navigation">
  {{list_articles columns="20" constraints="type is article issue greater 1 section smaller 150 publish_date is `$get_date`"}}
  {{if $gimme->current_list->count > 20}}
    {{if $gimme->current_list->column==1}}
      {{if $gimme->current_list->row==$page}}<span class="ui-state-highlight">{{$gimme->current_list->row}}</span>
      {{else}}<a class="ui-state-default" href="/by/page/archive?date={{$get_date}}&page={{$gimme->current_list->row}} #archive-content">{{$gimme->current_list->row}}</a>{{/if}}
    {{/if}}
  {{/if}}
  {{/list_articles}}
  </div>

  </div>

{{elseif $smarty.get.show == "poll"}}
  <div class="c-archiv">
	<dl>{{list_polls order="bynumber desc"}}
		<dt class="selected">{{$gimme->poll->question}}</dt>
    <dd style="display:block;">
    <p><b>Усяго прагаласавала: {{$gimme->poll->votes}}</b></p><br />
    {{list_poll_answers}}<span>{{$gimme->pollanswer->answer}} - {{$gimme->pollanswer->votes}}<div class="ui-state-default" style="width:{{$gimme->pollanswer->percentage|string_format:"%d"}}%;">{{$gimme->pollanswer->percentage|string_format:"%d"}}%</div></span>{{/list_poll_answers}}
    </dd>
  {{/list_polls}}</dl>
  </div>

{{elseif $gimme->search_articles_action->defined}}
  <div class="c-archiv"><strong>Вынікі пошуку {{if $gimme->search_articles_action->search_phrase}}"{{$gimme->search_articles_action->search_phrase}}":{{/if}}</strong>

  <div class="navigation">
  {{list_search_results columns="20" order="bypublishdate desc"}}
  {{if $gimme->current_list->count > 20}}
    {{if $gimme->current_list->column==1}}
      {{if $gimme->current_list->row==$page}}<span class="ui-state-highlight">{{$gimme->current_list->row}}</span>
      {{else}}<a class="ui-state-default" href="/by/page/archive?page={{$gimme->current_list->row}}&f_search_articles=true&f_search_level={{$gimme->search_articles_action->search_level}}&f_search_keywords={{$gimme->search_articles_action->search_phrase}}&f_search_issue={{$gimme->search_articles_action->search_issue}}&f_search_section={{$gimme->search_articles_action->search_section}}&f_search_start_date={{$gimme->search_articles_action->start_date}}&f_search_end_date={{$gimme->search_articles_action->end_date}}&f_search_topic={{$gimme->search_articles_action->topic_id}}&f_search_scope={{$gimme->search_articles_action->scope}}">{{$gimme->current_list->row}}</a>{{/if}}
    {{/if}}
  {{/if}}
  {{/list_search_results}}
  </div>

  {{list_search_results columns="20" order="bypublishdate desc"}}
  {{if $gimme->current_list->row==$page}}
    {{if $gimme->current_list->column==1}}
      <dl>
    {{/if}}
        <dt class="selected"><a href="/by/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a>{{if $gimme->article->has_video}}<i class="ico video"></i>{{/if}}{{if $gimme->article->has_photo}}<i class="ico photo"></i>{{/if}}</dt>
        <dd style="display:block;"><span>{{$gimme->article->intro|strip_tags:false|strip|truncate:300}}</span></dd>
    {{if $gimme->current_list->column == 20}}
    	</dl>
    {{/if}}
  {{/if}}
  {{/list_search_results}}
  {{if $gimme->prev_list_empty}}<em>Матэрыялы не знойдзены.</em>{{/if}}

  <div class="navigation">
  {{list_search_results columns="20" order="bypublishdate desc"}}
  {{if $gimme->current_list->count > 20}}
    {{if $gimme->current_list->column==1}}
      {{if $gimme->current_list->row==$page}}<span class="ui-state-highlight">{{$gimme->current_list->row}}</span>
      {{else}}<a class="ui-state-default" href="/by/page/archive?page={{$gimme->current_list->row}}&f_search_articles=true&f_search_level={{$gimme->search_articles_action->search_level}}&f_search_keywords={{$gimme->search_articles_action->search_phrase}}&f_search_issue={{$gimme->search_articles_action->search_issue}}&f_search_section={{$gimme->search_articles_action->search_section}}&f_search_start_date={{$gimme->search_articles_action->start_date}}&f_search_end_date={{$gimme->search_articles_action->end_date}}&f_search_topic={{$gimme->search_articles_action->topic_id}}&f_search_scope={{$gimme->search_articles_action->scope}}">{{$gimme->current_list->row}}</a>{{/if}}
    {{/if}}
  {{/if}}
  {{/list_search_results}}
  </div>

  </div>

{{else}}
  {{include file="archive-content-list.tpl"}}
{{/if}}
