<div id="footer">
  <img id="footer-logo" alt="logo" src="/templates/images/logo-footer.png"  />
  <div id="footer-copyright">
    Выкарыстоўваць артыкулы дазволена толькі з гіперспасылкай на крыніцу <br />© 2006-{{$smarty.now|date_format:"%Y"}}, Народная воля.
  </div>
  <div id="footer-search">{{ include file="search-box.tpl" }}</div>
</div><!-- /#footer -->    

<div id="footer-subnav">
  <ul>

{{ set_current_issue }}
{{ list_sections constraints="number greater 11 number smaller 200" }}

    <li{{ if $gimme->current_sections_list->at_end }} class="last"{{ /if }}><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></li>

{{ /list_sections }}


  </ul></div><!-- /#footer-subnav -->
<div id="footer-subnav" style="text-align:center;">







<noindex><!-- Akavita counter code --><a target=_top
href="http://www.akavita.by/">
<script language=javascript><!--
d=document;w=window;n=navigator;d.cookie="cc=1";
r=''+escape(d.referrer);js=10;c=(d.cookie)?1:0;j=0;
x=Math.random();u=''+escape(w.location.href);lt=0;
h=history.length;t=new Date;f=(self!=top)?1:0;cd=0;
tz=t.getTimezoneOffset();cpu=n.cpuClass;ww=wh=ss=0;
//--></script><script language="javascript1.1"><!--
js=11;j=(n.javaEnabled()?1:0);
//--></script><script language="javascript1.2"><!--
js=12;lt=1;s=screen;ss=s.width;
cd=(s.colorDepth?s.colorDepth:s.pixelDepth);
//--></script><script language="javascript1.3"><!--
js=13;wh=w.innerHeight;ww=w.innerWidth;
wh=(wh?wh:d.documentElement.offsetHeight);
ww=(ww?ww:d.documentElement.offsetWidth);
//--></script><script language=javascript><!--
q='lik?id=21327&d='+u+'&r='+r+'&h='+h+'&f='+f;
q+='&c='+c+'&tz='+tz+'&cpu='+cpu+'&js='+js+'&wh='+wh;
q+='&ww='+ww+'&ss='+ss+'&cd='+cd+'&j='+j+'&x='+x;
d.write('<img src="http://adlik.akavita.com/bin/'+
q+'" alt="Akavita" '+
'border=0 width=88 height=31>');
if(lt){d.write('<'+'!-- ');}//--></script><noscript>
<img src="http://adlik.akavita.com/bin/lik?id=21327"
border=0 height=31 width=88 alt="Akavita">
</noscript><script language="JavaScript"><!--
if(lt){d.write('--'+'>');}//--></script></a>
<!-- Akavita counter code -->

<!-- BEGIN Rating All.BY CODE - ALTERNATING THIS CODE WILL CAUSE TERMINATION ACCOUNT-->
<A HREF="http://www.all.by/">
<IMG SRC="http://www.all.by/cgi-bin/rating.cgi?id=10043306" BORDER="0" WIDTH="90" HEIGHT="32" ALT="Rating All.BY"></A>
<!-- END Rating All.BY CODE-->

<!-- catalog.tut.by code begin -->
<a href="http://catalog.tut.by/">
<img src="http://catalog.tut.by/images/catalog-tut2.gif" border=0 width=88 height=31 alt="Каталог TUT.BY"></a>
<!-- catalog.tut.by code end -->

<!--begin of Top100 logo-->
<a href="http://top100.rambler.ru/top100/">
<img src="http://top100-images.rambler.ru/top100/banner-88x31-rambler-gray2.gif" alt="Rambler's Top100" width=88 height=31 border=0></a>
<!--end of Top100 logo --></noindex>

<!--LiveInternet counter--><script type="text/javascript"><!--
document.write("<a href='http://www.liveinternet.ru/click' "+
"target=_blank><img src='//counter.yadro.ru/hit?t18.6;r"+
escape(document.referrer)+((typeof(screen)=="undefined")?"":
";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
";"+Math.random()+
"' alt='' title='LiveInternet: показано число просмотров за 24"+
" часа, посетителей за 24 часа и за сегодня' "+
"border='0' width='88' height='31'><\/a>")
//--></script><!--/LiveInternet-->








</div>

<!-- (C)2008 Gemius SA - gemiusAudience / nv-online.info / Home Page -->
<script type="text/javascript">
<!--//--><![CDATA[//><!--
var pp_gemius_identifier = new String('coia.88im8lherR_0EZhLeWjfSnRGsbVOpc9pYWrWDX.q7');
var pp_gemius_hitcollector = 'gaby.hit.gemius.pl';
//--><!]]>
</script>
<script type="text/javascript" src="/xgemius.js"></script>

<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-11466283-1");
pageTracker._trackPageview();
} catch(err) {}</script>

<!-- Yandex.Metrika counter -->
<div style="display:none;"><script type="text/javascript">
(function(w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter11339563 = new Ya.Metrika({id:11339563, enableAll: true});
        }
        catch(e) { }
    });
})(window, "yandex_metrika_callbacks");
</script></div>
<script src="//mc.yandex.ru/metrika/watch.js" type="text/javascript" defer="defer"></script>
<noscript><div><img src="//mc.yandex.ru/watch/11339563" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
