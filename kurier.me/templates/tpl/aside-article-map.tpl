{{if $gimme->article->defined && $gimme->article->has_map}}
<section class="article-map">
  <h3 class="block-title"><span>{{if $gimme->language->code=="ru"}}Карта отображения события{{else}}Article Map{{/if}}</span></h3>
  {{map width="236" height="176" show_locations_list="false" show_reset_link="false"}}
</section><!-- .article-map -->
{{/if}}