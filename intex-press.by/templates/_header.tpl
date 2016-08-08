<script type="text/javascript"><!--<![CDATA[
/* (c)AdOcean 2003-2012 */
/* PLACEMENT: smartcode.intexpress.by.100x60 */
if(location.protocol.substr(0,4)=='http')document.write(unescape('%3C')+'script id="smartcode.intexpress.by.100x60" src="'+location.protocol+'//by.adocean.pl/_'+(new Date()).getTime()+'/ad.js?id=yaFXHlFe58rNvqGSBuMdW9vdw8tuJNI71PaGOjkCZ7.._7/x='+screen.width+'/y='+screen.height+'" type="text/javascript"'+unescape('%3E%3C')+'/script'+unescape('%3E'));
//]]>--></script>
{{ unset_topic }}
<div id="header" class="clearfix">
{{ include file="_top-menu.tpl" }}
{{ include file="banner-header980x60.tpl" }}
<div class="header-bkg">
  <div class="logo clearfix"><a href="/"><img src="/templates/images/logo.gif" alt="intex logo" border="0" /></a></div>
  <div class="date clearfix"><p>{{ $smarty.now|camp_date_format:"%d %M %Y г., %W" }}</p>
  <p>Смотреть {{local}}{{set_section number="1"}}<a href="{{uri options="section"}}">последние новости</a>{{/local}}</p>
  </div>
  <div class="login clearfix" style="width:170px;">
    {{if $gimme->user->logged_in}}
    <p><strong>{{ $gimme->user->name }}</strong></p>
    {{else}}
    <p style="width:170px;">При использовании материалов сайта гиперссылка на intex-press.by обязательна</p>
    {{/if}}
  </div>
</div>
{{include file="_main-menu.tpl"}}
{{include file="_search-box.tpl"}}
{{include file="banner-header468x60.tpl"}}
</div>
