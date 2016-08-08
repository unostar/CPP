{{assign var="start_date" value="`$smarty.get.date`-01"|date_format:"%Y-%m-%d"}}
{{assign var="end_date" value="`$smarty.get.date`-31"|date_format:"%Y-%m-%d"}}
{{assign var="date_const" value="publish_date greater_equal `$start_date` publish_date smaller_equal `$end_date`"}}

{{list_sections constraints="number greater_equal 30 number smaller_equal 100"}}
  {{list_articles constraints="type is article `$date_const`" ignore_issue="true" order="bypublishdate desc"}}
    {{if $gimme->current_list->at_beginning}}
    <dt class="name"><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></dt>
    <dd class="articles">
      <ul>
    {{/if}}
        <li>
          <a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a> &gt;&gt;
          <time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}">{{$gimme->article->publish_date|camp_date_format:"%d/%m/%Y"}}</time>
        </li>
    {{if $gimme->current_list->at_end}}
      </ul>
    </dd><!-- .articles -->  
    {{/if}}
  {{/list_articles}}
{{/list_sections}}
