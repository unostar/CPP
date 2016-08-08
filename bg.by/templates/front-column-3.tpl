<div class="main-column-3">
{{ include file="specproekty.tpl" }}

{{ include file="_banner-right-240x400-AdOcean.tpl"}}

{{ include file="button-criminals.tpl"}}

{{* include file="front-column-3-last-comments.tpl" *}}

{{ include file="poll.tpl" }}
<p class="topic"><a href="{{ uri options="template archive-poll.tpl" }}">Архив опросов</a></p>

{{ include file="tag-cloud-block.tpl" }}

<div class="splitbox clearfix">
  <div class="col-3-split">
    <div class="box-305" style="width:167px;">
      <div class="top-alt"><span class="blank" style="line-height:24px;margin-left:8px;"><strong>Курсы валют НБ РБ</strong>&nbsp;&nbsp;&nbsp;<a href="#" target="_blank" style="color:#999;font-size:12px"> </a></span></div>
      <div class="center-content-blank clearfix" style="padding-top:10px;width:143px;">
        {{php}}include ('/home/bgby/xml-forest/brest-exchange.html');{{/php}}
      </div>
      <div class="bottom-blank"><span>&nbsp;</span></div>
    </div>
    {{ include file="front-column-3-calendar.tpl" }}
  </div>
 
</div>
 
{{ include file="banner-right-300x100.tpl" }}   
 
      <!-- karikatura -->
      {{ local }}
      {{ set_current_issue }}
      {{ set_section number="470" }}
      {{ list_articles length="1" order="bypublishdate desc" }}
      <div class="box-305">
        <div class="top"><span class="blank"><strong>Карикатура</strong> в номер</span></div>
        <div class="center-content-blank clearfix">
          <!-- CONTENT BEGIN -->
          <p>{{ $gimme->article->Intro }}<br /><br />
          <img src="{{ uri options="image 1" }}" alt="" width="279px"/>
          
          </p>
          <!-- CONTENT END -->
        </div>
        <div class="bottom-blank"><span>&nbsp;</span></div>
      </div>
      {{ /list_articles }}
      {{ /local }}
      <!-- end karikatura -->
      <!-- imported feeds -->
{{* include file="front-column-3-imported.tpl" *}}
<!-- end imported feeds -->
  
    </div>