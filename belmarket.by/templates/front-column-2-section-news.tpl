<div class="home-column-middle-3">
{{set_default_issue}}
{{assign var="counter" value="0"}}
<div class="home-column-middle-3-1">
  <div class="content-3-1">
  <h3>Актуалии</h3>
  {{ list_sections constraints="number greater 14 number smaller 41" }}
    {{ list_articles constraints="OnFrontPage is on OnSection is off" order="bypublishdate desc" }}
      {{if $counter < 4}}
        <div><p class="title-article"><a href="{{uri options="article"}}" >{{$gimme->article->name}}</a></p>
        <p class="author" style="padding:7px 0 0 0;clear:left;"><a href="{{ uri options="template author-page.tpl" }}">{{$gimme->article->author->name}}{{$gimme->article->extended_author}}</a></p>
        {{if $gimme->article->has_image(1)}}
          <div class="image-div"><img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" border="0" align="left" /></div>
        {{/if}}
        <p class="text">{{$gimme->article->Lead}}</p>
        <div class="serv-link"><a href="{{uripath options="article"}}#comments-list">Комментарии ({{$gimme->article->comment_count}})</a></div>
        </div><!-- /div --><br />
      {{assign var="counter" value=$counter+1}}
      {{ /if }}
    {{ /list_articles }}
  {{ /list_sections }}
  {{assign var="counter" value="0"}}
  <div class="all" style="padding:10px 0 0 0;width:200px;"><a href="{{uri options="template print-all-pages.tpl"}}" target="_self">Все статьи раздела</a></div>
  </div><!-- /.content-3-1 -->
</div><!-- /.home-column-middle-3-1 -->

<div class="home-column-middle-3-2">
  <div class="content-3-2">
  <h3>Экономикс</h3>
  {{ list_sections constraints="number greater 54 number smaller 86" }}
    {{ list_articles constraints="OnFrontPage is on OnSection is off" order="bypublishdate desc" }}
      {{if $counter < 4}}
        <div><p class="title-article"><a href="{{uri options="article"}}" >{{$gimme->article->name}}</a></p>
        <p class="author" style="padding:7px 0 0 0;clear:left;"><a href="{{ uri options="template author-page.tpl" }}">{{$gimme->article->author->name}}{{$gimme->article->extended_author}}</a></p>
        {{if $gimme->article->has_image(1)}}
          <div class="image-div"><img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" border="0" align="left" /></div>
        {{/if}}
        <p class="text">{{$gimme->article->Lead}}</p>
        <div class="serv-link"><a href="{{uripath options="article"}}#comments-list">Комментарии ({{$gimme->article->comment_count}})</a></div>
        </div><!-- /div --><br />
      {{assign var="counter" value=$counter+1}}
      {{ /if }}
    {{ /list_articles }}
  {{ /list_sections }}
  {{assign var="counter" value="0"}}
  <div class="all" style="padding:10px 0 0 0;width:200px;"><a href="{{uri options="template print-all-pages.tpl"}}#2" target="_self">Все статьи раздела</a></div>
  </div><!-- /.content-3-2 -->
</div><!-- /.home-column-middle-3-2 -->

<div class="home-column-middle-3-3">
  <div class="content-3-3">
  <h3>Общество</h3>
  {{ list_sections constraints="number greater 109 number smaller 131" }}
    {{ list_articles constraints="OnFrontPage is on OnSection is off" order="bypublishdate desc" }}
      {{if $counter < 4}}
        <div><p class="title-article"><a href="{{uri options="article"}}" >{{$gimme->article->name}}</a></p>
        <p class="author" style="padding:7px 0 0 0;clear:left;"><a href="{{ uri options="template author-page.tpl" }}">{{$gimme->article->author->name}}{{$gimme->article->extended_author}}</a></p>
        {{if $gimme->article->has_image(1)}}
          <div class="image-div"><img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" border="0" align="left" /></div>
        {{/if}}
        <p class="text">{{$gimme->article->Lead}}</p>
        <div class="serv-link"><a href="{{uripath options="article"}}#comments-list">Комментарии ({{$gimme->article->comment_count}})</a></div>
        </div><!-- /div --><br />
      {{assign var="counter" value=$counter+1}}
      {{ /if }}
    {{ /list_articles }}
  {{ /list_sections }}
  {{assign var="counter" value="0"}}
  <div class="all" style="padding:10px 0 0 0;width:200px;"><a href="{{uri options="template print-all-pages.tpl"}}#3" target="_self">Все статьи раздела</a></div>
  </div><!-- /.content-3-3 -->
</div><!-- /.home-column-middle-3-3 -->

</div><!-- /.home-column-middle-3 -->
