<div id="column-1" class="clearfix">
{{ list_articles length="1" ignore_issue=TRUE order="bypublishdate desc" }}
<div id="article" class="article clearfix">
<div class="h1">{{ $gimme->article->name }}</div>
<p class="date">{{$gimme->article->publish_date|camp_date_format:"%e %M %Y"}}</p><br/>
{{ if $gimme->article->has_image(2) }}
<img src="{{ uri options="image 2" }}" alt="{{$gimme->article->image2->description}}" title="{{$gimme->article->image2->description}}" />
{{ /if }}

<div id="intro" class="intro">{{$gimme->article->intro}}</div>

<div id="full_text" class="full_text">{{$gimme->article->full_text}}</div>
</div>

{{ /list_articles }}
</div>
