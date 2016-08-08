{{assign var="right" value=false}}
{{list_sections constraints="number greater 9 number smaller_equal 50"}}
{{list_articles length="5" constraints="OnFrontPage is off OnSection is off" }}
{{if $gimme->current_list->at_beginning}}
  {{if !$right}}<div class="equal clearfix">{{/if}}
  {{if $right}}<div class="box-news margin-0">{{else}}<div class="box-news">{{/if}}
{{/if}}
{{ if $gimme->current_list->index == 1 }}
    <div class="title"><span class="rss"><a href="http://{{$gimme->publication->site}}/feed/{{$gimme->section->url_name}}.rss">RSS</a></span><a href="{{ uri options="section"}}">{{ $gimme->section->name }}</a></div>
    {{ if $gimme->article->has_image(1) }}<img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description }}" />{{ /if }}
    <h3><a href="{{ uri }}">{{ $gimme->article->name }}</a></h3>
    <p>{{ $gimme->article->intro|strip_tags:false }}</p>
{{ else }}
    <p class="link"><a href="{{ uri }}">{{ $gimme->article->name }}</a></p>
{{ /if }}
{{if $gimme->current_list->at_end}}
  {{if $right}}</div></div>{{else}}</div>{{/if}}
  {{if !$right}}{{assign var="right" value=true}}{{else}}{{assign var="right" value=false}}{{/if}}
{{/if}}
{{/list_articles}}
{{if $gimme->current_list->at_end && $right}}</div>{{/if}}
{{/list_sections}}
