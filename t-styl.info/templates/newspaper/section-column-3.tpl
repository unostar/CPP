<div class="section-column-3 clearfix">

<div class="additional-box">
{{ include file="newspaper/front-column-2-radio-box.tpl" }}
{{ include file="newspaper/column-1-tabs.tpl" }}
</div>

<div id="box-300">
  <div class="box-top"><p>АПОШНІЯ МАТЭРЫЯЛЫ</p></div>
  <div class="box-content">
  {{ list_articles length="20" ignore_issue="true" ignore_section="true" order="bypublishdate desc" }}
    <p><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></p>
  {{ /list_articles }}
  </div>
  <div class="box-bottom">&nbsp;</div>
</div>

</div>
