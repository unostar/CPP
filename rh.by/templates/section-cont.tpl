{{if $gimme->url->get_parameter(page)}}{{assign var="page" value=$gimme->url->get_parameter(page)}}{{else}}{{assign var="page" value="1"}}{{/if}}

<div id="leftbar">

<div class="type-o-cont">Рубрыка {{ $gimme->section->name }}</div>

{{ if ($gimme->section->number gt 169)&($gimme->section->number lt 299) 

}}

{{ list_articles length="10" ignore_issue="true" }}
{{ if $gimme->current_articles_list->index lt 6 }}

<div class="story">
   <h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}

</a></h3>
   <img class="thumb1" alt="{{ campsite->image1->description }}" src="{{ uri 

options="image 1" }}" />
   <div class="intro-div">{{ $gimme->article->intro }}</div>
   <p class="pubplacetime">{{ $gimme->section->name }} - <a href="">{{ 

$gimme->article->town }}</a>, {{ $gimme->article->publish_date|

camp_date_format:"%e.%m.%Y." }}</p>
</div><!-- /.story -->

{{ else }}

{{ if $gimme->current_articles_list->index == 6 }}
<div class="divcont-tight">
{{ /if }}

{{ if $gimme->current_articles_list->at_beginning }}
{{ if $gimme->current_articles_list->index == 1 }}
{{ else }}
<div class="divcont-tight">
{{ /if }}
{{ /if }}

  <p class="separated"><span class="dateright">{{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y." }}</span><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>                    
{{ if $gimme->current_articles_list->at_end }}
</div>
{{ /if }}

{{ /if }}

   {{ if $gimme->current_list->at_end }}

      <div id="prevnext">

      {{ if $gimme->current_list->has_previous_elements }}
         <span><a href="{{ uri options="prev_items" }}">Папярэдняя</a></span>
      {{ else }}
         <span>Папярэдняя</span>
      {{ /if }}
      <span>|</span>
      {{ if $gimme->current_list->has_next_elements }}
         <span><a href="{{ uri options="next_items" }}">Наступная</a></span>
      {{ else }}
         <span>Наступная</span>
      {{ /if }}

      </div><!-- /#prevnext -->

   {{ /if }}


{{ /list_articles }}

{{ else }}


{{ list_articles length="100" columns="10" ignore_issue="true" }}
{{if $gimme->current_list->row==$page}}
<div class="story">
   <h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
   <img class="thumb1" alt="{{ campsite->article->image1->description }}" src="{{ uri options="image 1" }}" />
   <div class="intro-div">{{ $gimme->article->intro }}</div>
   <p class="pubplacetime">{{ $gimme->section->name }} - {{ local }}{{ list_article_topics }}{{ if !($gimme->topic->name == "front-4-stories") }}<a href="{{ uri options="template topic-town.tpl" }}">{{ $gimme->article->town }}</a>,{{ /if }}{{ /list_article_topics }}{{ /local }} {{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y." }}</p>
</div><!-- /.story -->
{{/if}}
{{ /list_articles }}

{{if !$gimme->prev_list_empty}}
<div class="section-pages">
<ul>
<li>Старонкі :</li>
{{list_articles length="100" columns="10" ignore_issue="true" }}
{{if $gimme->current_list->column==1}}
  <li{{if $gimme->current_list->row==$page}} class="selected"><a>{{else}}><a 

href="{{uripath options="section"}}?page={{$gimme->current_list->row}}{{if $gimme->url->get_parameter(tpid)}}&tpid={{$gimme->url->get_parameter(tpid)}}{{/if}}{{if $gimme->url->get_parameter(tpl)}}&tpl={{$gimme->url->get_parameter(tpl)}}{{/if}}">{{/if}}{{$gimme->current_list->row}}</a></li>
{{/if}}
{{/list_articles}}
</ul>
</div>
{{/if}}

{{ /if }}
</div><!-- /#leftbar -->