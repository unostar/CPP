{{set_default_section}}
{{set_default_article}}
<!-- begin second column -->
          <div class="home-column-middle">
		   <div class="content-middle">

<h2 class="top-news">Автор: <strong>{{ $gimme->article->author->name }}</strong></h2><br/>
<h2 class="top-news">Другие статьи этого автора</h2><br/>
<p><a href="{{ uri options="template send-to-author.tpl" }}">Отправить сообщение этому автору</a></p><br/><br/>
{{ list_articles length="20" ignore_issue="true" ignore_section="true" order="bypublishdate desc" constraints="author is __current" }}
{{ if $gimme->current_articles_list->index lt 6 }}

		<div class="section-articles" style="clear:left;">
		<p class="title-article"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
		<p class="author">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</p>

{{ if $gimme->article->has_image(1) }}
  <div class="image-div"><img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description }}" border="0"  align="left" /></div>
  {{ /if }}
	<p class="text" style="padding-top:12px;">{{ $gimme->article->Lead }}</p>
       {{ if $gimme->article->comments_enabled }}
       {{ assign var="flag1" value="0" }}
<div class="serv-link">
<a href="{{ uripath options="article" }}#comments-list">Комментарии {{ list_article_comments order="bydate asc"}}
{{ if $gimme->current_list->at_beginning }}
({{ $gimme->current_list->count }})
{{ assign var="flag1" value="1" }}
{{ /if }}
{{ /list_article_comments }}
{{ if $flag1 == "0" }}(0){{ /if }}
</a></div>
{{ /if }}
</div>
{{ /if }}
{{ /list_articles }}

<div class="art_from_previous">
<div class="art_from_previous-content">
<h2 class="top-news" style="clear:left;">Еще статьи этого автора</h2><br/>
{{ list_articles length="20" ignore_issue="true" ignore_section="true" order="bypublishdate desc" constraints="author is __current" }}
{{ if $gimme->current_articles_list->index gt 6 }}
<p class="br-article">
<a href="{{ uri options="article" }}">{{ $gimme->article->name }}&nbsp;<span 
class="index-date">({{ $gimme->article->author->name }}{{$gimme->article->extended_author}}, {{ $gimme->issue->name 
}})</span></a><br/></p>
{{ /if }}
{{ /list_articles }}

</div>
</div>


	       </div>
	      </div>
		  <!-- end 3 from 3 -->
	    <!-- end second column -->