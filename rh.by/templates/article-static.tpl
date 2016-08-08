<div id="leftbar">
<div class="story">
<h1>{{ $gimme->article->name }}</h1>

{{ include file="article-cont-tools.tpl" }}

<p>{{ $gimme->article->text }}</p>

{{ if $gimme->article->has_attachments }}
{{ list_article_attachments }}
<p><b>{{ $gimme->attachment->description }}</b></p>
<p><b>Сцягнуць: </b><a href="{{ uri options="articleAttachment" }}">{{ $gimme->attachment->file_name }} ({{ $gimme->attachment->size_kb }}kb)</a></p>
{{ /list_article_attachments }}
{{ /if }}

{{ if $gimme->section->number == 7 }}
  {{list_article_images}}
   {{if $gimme->article->image->article_index>2}}
      <p><a href="{{$gimme->article->image->description}}"><img src="{{uri options="image"}}" alt="{{$gimme->article->image->description}}" target="_blank" /></a></p> 
    {{ /if }} 
  {{/list_article_images}}
{{ /if }}

</div><!-- /.story -->
</div><!-- /#leftbar -->