<div class="header-middle-right clearfix">
  <div class="serv-block">
    {{set_issue number="1"}}
    {{set_section number="6"}}
    {{set_article name="цены на нефть"}}
    <div class="pict"><img src="/templates/images/prices.gif" alt="banner-top" border="0" /></div>
    <div class="info">
      <p class="title-top">Цены недели</p><br/>
      <p class="content-top">{{$gimme->article->field_f}}</p><br/>
      <p class="content-top">{{$gimme->article->field_s}}</p><br/>
      <p class="content-top">{{$gimme->article->field_t}}</p>
    </div><!-- /.info -->
    {{set_default_article}}
    {{set_default_issue}}
    {{set_section number="290"}}
    {{list_articles length="1" order="byNumber desc"}}
    <a href="{{uri options="section"}}">Смотреть все цены недели</a>
    {{/list_articles}}
    {{set_default_section}}
  </div><!-- /.serv-block -->
</div><!-- /.header-middle-right clearfix -->
