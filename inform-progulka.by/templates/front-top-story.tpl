<div id="top-story">
{{ list_articles length="1" ignore_section="true" ignore_issue="true" constraints="onfrontpage is on onsection is on" order="bypublishdate desc" }}

{{ if $gimme->article->has_image(2) }}
<div class="article-image">
  <img alt="{{ $gimme->article->image2->description }}" src="{{ uri options="image 2" }}" />
  {{ if $gimme->article->image2->description != "" }}
    <div class="image-description">
      <p>{{ $gimme->article->image2->description }}
      {{ if $gimme->article->image2->photographer != "" }}<br /><span>Фото:</span> {{ $gimme->article->image2->photographer }}{{ /if }}
      </p>
  </div><!-- /.image-description -->
  {{ /if }}
</div><!-- /.article-image -->
{{ /if }}


<h2><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h2>
{{ list_article_images }}
    {{ if $gimme->current_article_images_list->at_end }}
        {{ if $gimme->current_article_images_list->index > 2 }}  
        {{ assign var="image_count" value=$gimme->current_article_images_list->index-2 }}
        {{ /if }}
    {{ /if }} 
{{ /list_article_images }}      
     <div class="art-metadat"><p>{{ $gimme->article->author->name }} <img alt="." src="/templates/images/midplus.png" /> {{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y %H:%i" }} 
     {{ if $image_count }}<img alt="" src="/templates/images/midplus.png" /><a class="something-count" href="{{ uri options="article" }}">{{ $image_count }}</a>{{ /if }}{{ if $gimme->article->comment_count > 0 }}<a class="comment-count" href="">{{ $gimme->article->comment_count }}</a>{{ /if }}</p></div>
     <p>{{ $gimme->article->intro }}</p>
{{ /list_articles }}
</div>
<!-- /#top-story -->