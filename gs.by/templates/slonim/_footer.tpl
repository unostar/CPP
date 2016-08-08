<div class="banner"><script>OA_show(139);</script></div><!-- .banner -->

{{include file="slonim/reklama.tpl"}}

<div class="banner"><script>OA_show(137);</script></div><!-- .banner -->

<div id="footer" class="clearfix">
    <div class="footer-banner">{{ include file="slonim/banner-footer-1.tpl" }} {{* include file="slonim/banner-footer-2.tpl" *}} </div>
    <ul class="social">
      <li><a rel="nofollow" href="http://vkontakte.ru/club28884901"><img src="/templates/slonim/images/social-vkontakte.jpg" alt="Мы ВКонтакте"></a></li>
      <li><a rel="nofollow" href="http://www.facebook.com/profile.php?id=100002139838519"><img src="/templates/slonim/images/social-facebook.jpg" alt="Мы в Facebook"></a></li>
    </ul><!-- .social -->
    <div class="counters"><img src="http://adlik.akavita.com/bin/lik?id=17030" border=0 height=31 width=88 alt="Akavita: каталог, рейтинг, счетчик для сайтов Беларуси" /></div>
    <div class="footer-menu">© {{ $smarty.now|camp_date_format:"%Y" }} Газета Слонімская, Слоним, новости Слонима<br/>
{{ list_sections constraints="number greater 499 number smaller 511" }}
      <a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a> <img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  /> 
{{ /list_sections }}
      <a href="{{ uri options="template slonim/archive.tpl" }}">Архив</a> <img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  /> 
{{ list_sections constraints="number greater 519 number smaller 531" }}
      <a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a> {{ if $gimme->section->number == 530 }} {{ else }}<img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  /> {{ /if }}
{{ /list_sections }}
      <a href="{{ uri options="template slonim/rss.tpl" }}">RSS Feed</a> <img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  />
      <a href="http://forum.gs.by" target="_blank">Форум</a></div>
    <div class="footer-hr">
      <hr />
    </div>
    <img src="/templates/slonim/images/footerlogo.gif" alt="footer logo" class="footer-logo" />
    <div class="footer-menu-1"> <a href="/">Главная</a> <img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  /> {{ local }}
{{ set_current_issue }}
{{ list_sections constraints="number greater 9 number smaller 61" }}
      <a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a> <img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  />
{{ /list_sections }}
{{ /local }} <a href="{{ uri options="template slonim/issue-contents-otdusina.tpl"}}">Отдушина</a> </div>
  </div>

<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-4423883-4");
pageTracker._trackPageview();
} catch(err) {}</script>

<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-25764022-1");
pageTracker._trackPageview();
} catch(err) {}</script>

<!-- (C)2008 Gemius SA - gemiusAudience / gs.by / Home Page -->
<script type="text/javascript">
<!--//--><![CDATA[//><!--
var pp_gemius_identifier = new String('AphLoqN2EGHjmu733qDCILeOzdrkqBuKomhJhXd7SiL.w7');
var pp_gemius_hitcollector = 'gaby.hit.gemius.pl';
//--><!]]>
</script>
<script type="text/javascript" src="/xgemius.js"></script>