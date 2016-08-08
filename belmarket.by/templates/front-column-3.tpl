{{if $gimme->default_issue->number=="1"}}{{set_current_issue}}{{else}}{{set_default_issue}}{{/if}}
<div class="home-column-right clearfix">
  <div class="content-4">
  
{{include file="right-column-top-banner.tpl"}}

  {{set_section number="5"}}
  {{list_articles length="1"}}
  {{if $gimme->article->has_image(1)}}
  <div class="issue-picture"><a href="{{uri options="image 1"}}" rel="lightbox" title="Титульный лист печатного издания Белорусы и рынок"><img src="{{uri options="image 1"}}&ImageRatio=35" alt="Титульный лист печатного издания Белорусы и рынок" width="166" /></a></div>
  {{ /if }}
  {{ /list_articles }}
  {{set_default_section}}
  {{if $gimme->default_issue->number=="1"}}{{set_current_issue}}{{else}}{{set_default_issue}}{{/if}}
  
  <h2 class="section"><a href="{{ uri options="template login.tpl" }}">(PDF) Вход/Регистрация</a></h2>
  <h2 class="section"><a href="{{ uri options="template print-all-pages.tpl" }}">Весь номер по полосам</a></h2>
  <h2 class="section"><a href="{{ uri options="template archive.tpl" }}">Архив</a></h2>
  
  <h3>Сервисы сайта</h3>
  <div>
  <ul class="ul-right">
  {{list_sections constraints="number greater 269 number smaller 341" ignore_issue="true"}}
  {{list_articles length="1"}}
  <li><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></li>
  {{/list_articles}}
  {{ /list_sections }}
  </ul>
  </div>

<div style="margin:10px 0;">
{{ include file="right-column-center-banner.tpl" }}
</div>
  
  <div>
  <a href="http://www.twitter.com/belmarket" target="_blank"><img src="http://twitter-badges.s3.amazonaws.com/follow_me-a.png" alt="Follow belmarket on Twitter"/></a>
  </div>
  {{ include file="front-column-3-comp.tpl" }}
  {{ include file="front-right-calendar.tpl" }}
  <br/>
  {{ include file="front-column-3-banner.tpl" }}
  
  </div><!-- /.content-4 -->
</div><!-- /.home-column-right clearfix -->
