<div id="four-stories">

{{ set_topic name="front-4-stories:en" }}
{{ list_articles length="4" order="bydate desc" }}

   <div class="fourths{{ if $gimme->current_articles_list->index == 4 }}-last{{ /if }}">  
      <div class="fourth-inner">
         <p class="uptitle"><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></p>
         <h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
         {{ if $gimme->article->image1 }}<img class="thumb" alt="{{ $gimme->article->image1->description }}" src="{{ uri options="image 1" }}" />{{ /if }}
	 <div class="intro-div">{{ $gimme->article->intro }}</div>
	 <p class="comcount"><a href="{{ uri options="article" }}">{{ $gimme->article->comment_count }}</a></p>
         <p class="placetime">{{ if $gimme->article->has_topic(9) }}<a href="{{ uri options="template topic-town.tpl" }}">{{ $gimme->article->town }}</a>,{{ /if }} {{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y" }}</p>
      </div><!-- /.fourth-inner -->
   </div><!-- /.fourths -->

{{ /list_articles }}
{{ unset_topic }}


</div><!-- /#four-stories -->