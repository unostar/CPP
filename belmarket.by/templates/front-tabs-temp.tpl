<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="copyright" content="Белорусы и рынок" />
<meta name="keywords" content="Беларусь, РБ, БР, белорусские, белорусский, цены, цена, банк, банки, рынок, предприятия, предприятие, компания, правительство, экономика, государства, президента, президент, президентом, газ, нефть, валюта, финансы, право, власти, власть, Минск" />
<title>Белорусы и рынок. Еженедельная аналитическая газета для деловых людей.</title>
{{ include file="_html-head.tpl" }}
<script src="/templates/javascript/yetii-min.js" type="text/javascript"></script>
</head>
<style>
#tab-container-1{
  margin:12px 0 0 10px;
padding:0;
width:249px;
text-align:left;
}
#tab-container-1-nav{
  list-style: none;
  padding: 0;
  margin: 0;
  background:transparent url(/templates/images/pixel.gif) repeat-x scroll left bottom;
  float: left;
  width: 100%;
}
#tab-container-1-nav li{
  float: left;
  border-top:2px solid #ccc;
  border-left:1px solid #ccc;
  border-right:1px solid #ccc;
  margin: 0 5px 0 0;
  text-transform: uppercase;
}
#tab-container-1-nav li a.active:link,#tab-container-1-nav li a.active:visited{
  background:#FFFFFF none repeat scroll 0 0;
  color:#BA2C29;
  cursor:default;
  padding-bottom:4px;
  border: none;
}
#tab-container-1-nav li a:link, #tab-container-1-nav li a:visited{
background:#EEEEEE none repeat scroll 0 0;
border-color:#CCCCCC;
border-style:solid solid none;
border-width:1px 1px 0;
color:#666666;
display:block;
float:left;
font-weight:bold;
padding:2px 4px;
text-decoration:none;
}
#tab-container-1-nav li a:hover{
  background: #fff;
}
#tab-container-1 .tab{
  clear: left;
  padding:10px 0 0 0;
}
.list-articles{
/*
border-color:#CCCCCC;
border-style:none solid solid;
border-width:0 1px 1px;
padding:5px 8px 0;
*/
clear:left;

}
</style>
<body>

<div id="wrapper">

<div id="tab-container-1">
{{ set_section number ="2" }}
{{ list_articles constraints="OnFrontPage is on OnSection is off" }}
{{ if $gimme->current_list->at_beginning }}
{{ assign var="check" value = "1"}}
{{ /if }}
{{ /list_articles }}
{{ $check }}

    <ul id="tab-container-1-nav">
    {{ if $check == "1" }}
    {{ list_sections constraints="number smaller 3" }}
    <li><a href="{{ if $gimme->section->number == 1}}#tab1{{ else }} #tab2 {{/if}}">{{ $gimme->section->name }}</a></li>
    {{ /list_sections }}
    {{ else }}
    {{ list_sections constraints="number smaller 2" }}
    <li><a href="#tab1">{{ $gimme->section->name }}</a></li>
    {{ /list_sections }}
    {{ /if }}
    </ul>
  <div class="list-articles">
    <div class="tab" id="tab1">
    <div class="list-articles">
    {{set_section number="1"}}
    {{list_articles length="5" constraints="OnFrontPage is on OnSection is off" order="bypublishdate desc"}}
      <p class="br-article"><a href="{{uri options="article"}}">{{$gimme->article->name}}&nbsp;<span class="index-date">({{$gimme->article->publish_date|camp_date_format:"%d.%m %H:%i"}})</span></a></p>
    {{ /list_articles }}
    </div><!-- /.list-articles -->
    <div class="all"><a href="{{ uri options="section" }}" target="_self">Все новости</a></div>
    </div>
    
    <div class="tab" id="tab2">
    <div class="list-articles">
    {{set_section number="2"}}
    {{list_articles length="5" constraints="OnFrontPage is on OnSection is off" order="bypublishdate desc"}}
      <p class="br-article"><a href="{{uri options="article"}}">{{$gimme->article->name}}&nbsp;<span class="index-date">({{$gimme->article->publish_date|camp_date_format:"%d.%m %H:%i"}})</span></a></p>
    {{ /list_articles }}
    </div><!-- /.list-articles -->
    <div class="all"><a href="{{ uri options="section" }}" target="_self">Все новости</a></div>
    </div>
    </div>
    
</div>

<script type="text/javascript">
var tabber1 = new Yetii({
id: 'tab-container-1'
});
</script>


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





</div><!-- /#wrapper -->


</body>
</html>
