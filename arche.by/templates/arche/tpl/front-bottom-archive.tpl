<section class="columns">
  <header>
    <h2><a href="/{{$gimme->language->code}}/page/archive/">Архіў</a></h2>
    <a href="/{{$gimme->language->code}}/page/archive/" class="read-more">Болей архіўных матэрыялаў</a>
  </header>
<div class="clearfix">
{{list_sections constraints="number greater 20 number smaller_equal 90 number not 80"}}
{{list_articles length="12" constraints="type is article OnFrontPage is off OnSection is off" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
  <div class="column">
    <h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}  &gt;&gt;</a></h3>
    <ul>
{{/if}}
{{if $gimme->current_list->index > 5}}
      <li>
        <h4><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h4>
        <time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}">{{$gimme->article->publish_date|camp_date_format:"(%d/%m/%Y)"}}</time>
      </li>
{{/if}}
{{if $gimme->current_list->at_end}}
    </ul>
  </div><!-- .column -->
{{/if}}
{{/list_articles}}
{{/list_sections}}
</div>
{{list_sections constraints="number greater_equal 130 number smaller_equal 140"}}{{assign var="col" value="1"}}
{{list_articles length="11" constraints="type is article OnFrontPage is off OnSection is off" ignore_issue="true" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
  <div class="column wide-column">
    <h3><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}} &gt;&gt;</a></h3>
{{/if}}
{{if $gimme->current_list->index > 5}}
{{if $col==1}}
    <ul>{{/if}}
      <li>
        <h4><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/{{$gimme->article->number}}">{{$gimme->article->name}}</a></h4>
        <time datetime="{{$gimme->article->publish_date|camp_date_format:"%Y-%m-%d"}}">{{$gimme->article->publish_date|camp_date_format:"(%d/%m/%Y)"}}</time>
      </li>
{{if $col==2 || $gimme->current_list->at_end}}
    </ul>{{/if}}
{{if $col<2}}{{assign var="col" value=$col+1}}{{else}}{{assign var="col" value="1"}}{{/if}}
{{/if}}
{{if $gimme->current_list->at_end}}
  </div><!-- .column wide-column -->
{{/if}}
{{/list_articles}}
{{/list_sections}}

</section><!-- .columns -->
