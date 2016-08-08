<div class="type-o-cont">стужка навiн</div>
{{ list_articles length="5" order="byPublishDate desc" constraints="OnFrontPage is off OnSection is off" }}

<div class="story">
   <h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
   {{ if $gimme->article->image1 }}<img class="thumb1" alt="{{ $gimme->article->image1->description }}" src="{{ uri options="image 1" }}" />{{ /if }}
   <div class="intro-div">{{ $gimme->article->intro }}</div>
   <p class="pubplacetime">{{ $gimme->section->name }}{{ if $gimme->article->has_topics }} - <a href="{{ uri options="template topic-town.tpl" }}">{{ $gimme->article->town }}</a>,{{ /if }} {{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y" }}</p>
</div><!-- /.story -->
        
{{ /list_articles }}