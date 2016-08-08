<aside class="gallery">
  <h3>Галерэя артыкула</h3>
  <ul>
{{list_article_images}}{{if $gimme->image->article_index > 2}}
    <li><a class="cover" rel="image_gallery" href="{{uri options="image"}}" title="{{$gimme->image->description}}"><img src="{{uri options="image width 130 height 95"}}" width="130" height="95" alt="{{$gimme->image->description}}" /></a></li>
{{/if}}{{/list_article_images}}
  </ul>
</aside><!-- .gallery -->
