<div id="leftbar">

<div class="type-o-cont">Артыкулы, напісаныя {{ $gimme->article->author->name }}</div>

{{ list_articles length="10" ignore_issue="true" ignore_section="true" order="bypublishdate desc" constraints="author is __current" }}
{{ if $gimme->current_articles_list->index lt 6 }}

<div class="story">
   <h3><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h3>
   <img class="thumb1" alt="{{ campsite->image1->description }}" src="{{ uri options="image 1" }}" />
   <p class="intro">{{ $gimme->article->intro }}</p>
   <p class="pubplacetime">{{ $gimme->section->name }} - <a href="">{{ $gimme->article->town }}</a>, {{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y." }}</p>
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

</div><!-- /#leftbar -->