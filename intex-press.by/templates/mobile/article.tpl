{{include file="mobile/_header.tpl"}}
<h2><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></h2>
{{assign var="art_num" value=$gimme->article->number}}
{{assign var="sect_num" value=$gimme->section->number}}
{{assign var="sect_url" value="/`$gimme->issue->language->code`/`$gimme->issue->url_name`/`$gimme->section->url_name`"}}
{{local}}
{{set_publication identifier="1"}}
{{set_article number=$art_num}}
<h1>{{$gimme->article->name}} <span>({{$gimme->article->last_update|camp_date_format:"%H:%i, %d.%m"}})</span></h1>
<div class="intro">
{{if $gimme->article->has_image(2)}}<a href="{{uri options="image 2"}}"><img src="{{$gimme->article->image2->thumbnailurl}}" alt="" /></a>{{/if}}
{{$gimme->article->intro|strip_tags:false}}
</div>
<div class="full_text">
{{assign var="content" value=$gimme->article->full_text}}
{{php}}
$content = $this->get_template_vars("content");
$allowedTags="<p><br><b><strong>";
$content = strip_tags($content, $allowedTags);
echo $content;
{{/php}}
</div>

{{list_article_images}}
  {{if $gimme->current_list->count > 2}}
    {{if $gimme->current_list->at_beginning}}<div class="article_images">{{/if}}
      {{if $gimme->article->image->article_index > 2}}
      <a href="{{$gimme->article->image->imageurl}}"><img src="{{$gimme->article->image->thumbnailurl}}" alt="" /></a>
      {{/if}}
    {{if $gimme->current_list->at_end}}</div>{{/if}}
  {{/if}}
{{/list_article_images}}

{{if $gimme->article->has_attachments}}
  <div class="article_attachments">
  {{list_article_attachments}}
    <p>
      {{if $gimme->attachment->extension == "mp3"}}<i class="ico audio"></i> {{/if}}
      {{if $gimme->attachment->extension == "flv"}}<i class="ico video"></i> {{/if}}
      <a href="{{uri options="articleattachment"}}">Скачать "{{$gimme->attachment->description}}" ({{$gimme->attachment->size_kb}}Kb)</a>
    </p>
  {{/list_article_attachments}}
  </div>
{{/if}}

{{/local}}
<h4><a href="/" class="back">на главную >></a></h4>
{{include file="mobile/_footer.tpl"}}
