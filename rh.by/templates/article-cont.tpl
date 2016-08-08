{{ set_default_issue }}
{{ set_default_section }}
{{ set_default_article }}
<div id="leftbar">
  <div class="story">
    <h1>{{ $gimme->article->name }}</h1>
    <p class="uptitle">{{ local }}{{ list_article_topics }}{{ if !($gimme->topic->name == "блёк 4 артыкула") }}<a href="{{ uri options="template topic-town.tpl" }}">{{ $gimme->article->town }}</a>,{{ /if }}{{ /list_article_topics }}{{ /local }} Aўтар: <a href="{{ uri options="template author.tpl" }}">{{ $gimme->article->author->name }}</a>, {{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y. %H:%i" }}</p>

{{ include file="article-cont-tools.tpl" }}

<img class="artimage" alt="{{ $gimme->article->image2->description }}" src="{{ uri options="image 2" }}" />
<p class="image-caption"><strong>{{ $gimme->article->image2->description }}</strong>    {{ $gimme->article->photo_description }}</p>

<div class="intro-div">{{ $gimme->article->intro }}</div>

<div class="full_text_div">{{ $gimme->article->full_text }}</div>

{{ if $gimme->article->has_attachments }}
{{ list_article_attachments }}
<p><b>{{ $gimme->attachment->description }}</b></p>
<p><b>Спампаваць: </b><a href="{{ uri options="articleAttachment" }}">{{ $gimme->attachment->file_name }} ({{ $gimme->attachment->size_kb }}kb)</a></p>
{{ /list_article_attachments }}
{{ /if }}

{{* <div>
<script src="http://connect.facebook.net/be_BY/all.js#xfbml=1"></script><fb:like show_faces="false" width="450"></fb:like>
</div> *}}

<!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_default_style ">
  <a href="http://www.addthis.com/bookmark.php?v=250&amp;pubid=xa-4e1b4e220fd6058e" class="addthis_button_compact">Падзяліцца</a>
  <span class="addthis_separator">|</span>
  <a class="addthis_button_twitter"></a>
  <a class="addthis_button_facebook"></a>
  <a class="addthis_button_vk"></a>
</div>
<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4e1b4e220fd6058e"></script>
<!-- AddThis Button END -->

{{ include file="article-comments.tpl" }}

</div><!-- /.story -->                              
        
{{ include file="article-cont-titles.tpl" }}

</div><!-- /#leftbar -->