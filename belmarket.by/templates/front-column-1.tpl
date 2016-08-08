{{if $gimme->default_issue->number=="1"}}{{set_current_issue}}{{else}}{{set_default_issue}}{{/if}}
<div class="home-column-left">
  <div class="content-1">
  <h2 class="section"><a href="{{ uri options="template print-all-pages.tpl" }}">Актуалии</a></h2>
    <ul class="sections">
      {{ list_sections constraints="number greater 14 number smaller 41" }}
      <li><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></li>
      {{ /list_sections }}
    </ul>
  <h2 class="section"><a href="{{ uri options="template print-all-pages.tpl" }}#2">Экономикс</a></h2>
    <ul class="sections">
      {{ list_sections constraints="number greater 54 number smaller 86" }}
      <li><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></li>
      {{ /list_sections }}
    </ul>
  <h2 class="section"><a href="{{ uri options="template print-all-pages.tpl" }}#3">Общество</a></h2>
    <ul class="sections">
      {{ list_sections constraints="number greater 109 number smaller 131" }}
      <li><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></li>
      {{ /list_sections }}
    </ul>

  <ul class="sections">{{set_section number="140"}}
    <li><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></li>
  </ul>

  {{set_default_section}}
  {{if $gimme->default_issue->number=="1"}}{{set_current_issue}}{{else}}{{set_default_issue}}{{/if}}

  <h3>Приложения</h3>
  <ul class="applications">
    {{assign var="this_issue" value=$gimme->issue->publish_date|camp_date_format:'%Y-%m-%d'}}
    {{list_sections constraints="number greater 149 number smaller 201"}}
    {{list_articles length="1" ignore_issue="true" constraints="publish_date smaller_equal $this_issue OnFrontPage is on OnSection is off"}}
    <li{{if $gimme->default_issue==$gimme->issue}} class="active"{{/if}}><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></li>
    {{/list_articles}}
    {{ /list_sections }}
  </ul>

{{ include file="front-column-1-poll.tpl" }}

  <h3 style="clear:right;">Партнеры</h3>
  <div class="list-articles">
    {{set_issue number="1"}}{{set_section number="1010"}}
      {{list_articles}}
      {{if $gimme->article->has_image(1)}}
        <a href="{{$gimme->article->External_link}}" target="_blank" style="clear:none;padding:5px;margin:0;" title="{{$gimme->article->image1->description}}"><img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" style="border:none;width:136px;" /></a>
      {{/if}}
      {{/list_articles}}
    {{set_default_section}}
  </div><!-- /.list-articles -->

{{include file="left-column-banners.tpl"}}

  </div><!-- /.content-1 -->
</div><!-- /.home-column-left -->

{{if $gimme->default_issue->number=="1"}}{{set_current_issue}}{{else}}{{set_default_issue}}{{/if}}
{{set_default_section}}