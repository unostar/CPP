              <div id="last-issue">

{{if $smarty.get.page}}{{assign var="page" value=$smarty.get.page}}{{else}}{{assign var="page" value="1"}}{{/if}}

{{if $smarty.get.date}}
  {{assign var="get_date" value=$smarty.get.date|camp_date_format:"%Y-%m-%d"}}
  <h1>Артыкулы за {{$get_date|camp_date_format:"%d.%m.%Y"}}</h1>

{{list_articles columns="20" constraints="type is article issue greater 1 section smaller 200 publish_date is `$get_date`"}}
  {{if $gimme->current_list->row==$page}}
      {{ if $gimme->section->name != $section }}
        </ul>
        <h2>{{ $gimme->section->name }}</h2>
        <ul>
      {{/if}}
          <li><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></li>
      {{assign var="section" value=$gimme->section->name}}
  {{/if}}
  {{/list_articles}}
  {{if $gimme->prev_list_empty}}<dt class="selected">Матэрыялы не знойдзены.</dt>{{/if}}

  <div id="pagination">
  {{list_articles columns="20" constraints="type is article issue greater 1 section smaller 200 publish_date is `$get_date`"}}
  {{if $gimme->current_list->count > 20}}
    {{if $gimme->current_list->column==1}}
      {{if $gimme->current_list->row==$page}}<a id="currentpage" href="">{{$gimme->current_list->row}}</a>{{ if !($gimme->current_list->at_end) }}<img alt="." src="/templates/images/midplus.png" />{{ /if }}
      {{else}}<a href="/ru/page/archive?date={{$get_date}}&page={{$gimme->current_list->row}}">{{$gimme->current_list->row}}</a>{{ if !($gimme->current_list->at_end) }}<img alt="." src="/templates/images/midplus.png" />{{ /if }}{{/if}}
    {{/if}}
  {{/if}}
  {{/list_articles}}
  </div><!-- /#pagination -->

{{/if}}

              </div><!-- last-issue -->
