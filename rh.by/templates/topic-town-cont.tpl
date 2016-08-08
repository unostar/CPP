{{if $gimme->url->get_parameter(page)}}{{assign var="page" value=$gimme->url->get_parameter(page)}}{{else}}{{assign var="page" value="1"}}{{/if}}

<div id="leftbar">

<div class="type-o-cont">{{ $gimme->topic->name }}</div>

{{ list_articles length="100" columns="10" ignore_issue="true" ignore_section="true" }}
{{if $gimme->current_list->row==$page}}
<div class="story">
   <h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
   <img class="thumb1" alt="{{ campsite->image1->description }}" src="{{ uri options="image 1" }}" />
   <p class="intro">{{ $gimme->article->intro }}</p>
   <p class="pubplacetime">{{ $gimme->section->name }} - <a href="">{{ $gimme->article->town }}</a>, {{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y." }}</p>
</div><!-- /.story -->
{{/if}}
{{ /list_articles }}

{{if !$gimme->prev_list_empty}}
<div class="section-pages">
<ul>
<li>Старонкі :</li>
{{list_articles length="100" columns="10" ignore_issue="true" ignore_section="true"}}
{{if $gimme->current_list->column==1}}
  <li{{if $gimme->current_list->row==$page}} class="selected"><a>{{else}}><a href="{{uripath options="section"}}?page={{$gimme->current_list->row}}{{if $gimme->url->get_parameter(tpid)}}&tpid={{$gimme->url->get_parameter(tpid)}}{{/if}}{{if $gimme->url->get_parameter(tpl)}}&tpl={{$gimme->url->get_parameter(tpl)}}{{/if}}">{{/if}}{{$gimme->current_list->row}}</a></li>
{{/if}}
{{/list_articles}}
</ul>
</div>
{{/if}}

</div><!-- /#leftbar -->