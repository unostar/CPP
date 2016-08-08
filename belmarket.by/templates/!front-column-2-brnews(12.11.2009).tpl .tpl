{{set_default_issue}}
<div class="middle-right">
  <div class="content-3">
  {{set_section number="1"}}
  <h2 class="top-news"><a href="{{uri options="section"}}">БР Новости</a></h2>
  {{set_section number="2"}}
  <h2 class="top-news"><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></h2>
    <div class="list-articles">
    {{set_section number="1"}}
    {{list_articles length="5" constraints="OnFrontPage is on OnSection is off" order="bypublishdate desc"}}
      <p class="br-article"><a href="{{uri options="article"}}">{{$gimme->article->name}}&nbsp;<span class="index-date">({{$gimme->article->publish_date|camp_date_format:"%d.%m %H:%i"}})</span></a></p>
    {{ /list_articles }}
    </div><!-- /.list-articles -->
    <div class="all"><a href="{{ uri options="section" }}" target="_self">Все новости</a></div>

  {{list_sections constraints="number greater 149 number smaller 201"}}
  {{list_articles length="1" constraints="OnFrontPage is on OnSection is off"}}
    <div class="appendix">
      {{if $gimme->article->has_image(1)}}
      <div class="image-div"><img src="{{uri options="image 1"}}" alt="{{$gimme->article->image1->description}}" border="0" align="left" /></div>
      {{/if}}
      <h3><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></h3>
      <p class="title-article"><a href="{{uri options="article"}}">{{$gimme->article->name}}</a></p>
      <p class="author"><a href="{{ uri options="template author-page.tpl" }}">{{ $gimme->article->author->name }}{{$gimme->article->extended_author}}</a></p>
      <p class="text">{{$gimme->article->Lead}}</p>
      <div class="serv-link"><a href="{{uri options="section"}}">Читать все статьи</a></div>
    </div><!-- /.appendix -->
  {{ /list_articles }}
  {{ /list_sections }}

  </div><!-- /.content-3 -->
</div><!-- /.middle-right -->
