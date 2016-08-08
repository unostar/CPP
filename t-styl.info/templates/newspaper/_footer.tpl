  <div id="footer">
    <div class="footer-content">
      <div class="logo"> <img src="http://www.t-styl.info/templates/newspaper/images/footer-logo.gif" alt="logo" />
        <p>Перадрукоўка матэрыялаў 
          сайта дазваляецца толькі 
          са спасылкай на крыніцу з 
          указаннем аўтара.</p>
      </div>
      <div class="footer-links">
        <p><a href="/">Галоўная</a></p>
      
      {{ local }}
      {{ list_sections constraints="number greater 299 number smaller 321" }}
        <p><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></p>
      {{ /list_sections }}
      {{ /local }}
        <p><a target="email" class="email" <a href="/templates/newspaper/php/mail/send.php">Лiст рэдактару</a></p>
        <p><a href="{{ uri options="template newspaper/rss.tpl" }}">RSS стужка</a></p>
      </div>
      <div class="footer-links">
        {{ local }}
      {{ set_current_issue }}
      {{ set_section number="1" }}
         <p><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></p>
      {{ /local }}
       {{ list_sections constraints="number greater 9 number smaller 41" }}
        <p><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></p>
       {{ /list_sections }}
      </div>
      <div class="footer-links">
      {{ list_sections constraints="number greater 49 number smaller 91" }}
        <p><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></p>
      {{ /list_sections }}
      </div>
      <div class="footer-links right-box" >
      <p><a href="{{ uri options="template newspaper/archive.tpl" }}">Архіў</a></p>
      {{ list_sections constraints="number greater 99 number smaller 121" }}
         <p><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></p>
      {{ /list_sections }}

      </div>
<br/>
  



    </div>

<div>

</div>

  </div>
  </div>
 
<div>&nbsp;</div>
<div style="clear:both;text-align:center;width:100%;">
{{* when adding new code, try to make it xhtml compatible ... will be easier to debug site if anything gets broken *}}
<!-- content.tut.by code begin -->
<a href="http://content.tut.by/">
<img src="http://content.tut.by/content2008.gif" alt="TUT.BY" width="88" border="0" height="31" /></a>
<!-- content.tut.by code end -->

<!-- budzma.org code begin -->  
<a href="http://www.budzma.org"><img src="http://budzma.org/banner/budzma-1-88x31.gif" width=88 height=31 border=0 alt="Будзьма разам!"></a>
<!-- budzma.org code end -->

<!-- baj.by code begin -->
<a href="http://baj.by"><img src="http://baj.by/images/banners/baj_88x31.gif" alt="Беларуская Асацыяцыя Журналістаў" border="0" width="88" height="31"></a>
<!-- baj.by code end -->

<!-- Nastaunik banner start -->
<a href="http://nastaunik.info/" alt="Інфармацыйна-метадычныпартал
Nastaunik.info"><img
src="http://nastaunik.info/images/nastaunik81x31.gif" width="81"
height="31" border="0"></a>
<!-- Nastaunik banner end -->
</br>
<!-- adukacyja.info banner start -->
<a href="http://adukacyja.info/" title="Адукацыя - стыль жыцця">
<img src="http://ts.omniton.net/images/cms-image-000007251.gif" border="0" alt="Адукацыя - стыль жыцця" />
</a>
<!-- adukacyja.info banner end -->

<!-- kamunikat.org banner start -->
<a href="http://kamunikat.org" title="Беларуская Інтэрнэт-Бібліятэка КАМУНІКАТ.org">
<img src="http://kamunikat.org/assets/banners/kamunikat-88x31.gif" border="0" alt="Беларуская Інтэрнэт-Бібліятэка КАМУНІКАТ.org" />
</a>
<!-- kamunikat.org banner end -->

<!-- Akavita counter code -->
<a target="_top" href="http://www.akavita.by/">
<script language="javascript"><!-- 
d=document;w=window;n=navigator;d.cookie="cc=1";
r=''+escape(d.referrer);js=10;c=(d.cookie)?1:0;j=0;
x=Math.random();u=''+escape(w.location.href);lt=0;
h=history.length;t=new Date;f=(self!=top)?1:0;cd=0;
tz=t.getTimezoneOffset();cpu=n.cpuClass;ww=wh=ss=0;
//--></script>
<script language="javascript1.1"><!-- 
js=11;j=(n.javaEnabled()?1:0);
//--></script>
<script language="javascript1.2"><!-- 
js=12;lt=1;s=screen;ss=s.width;
cd=(s.colorDepth?s.colorDepth:s.pixelDepth);
//--></script>
<script language="javascript1.3"><!-- 
js=13;wh=w.innerHeight;ww=w.innerWidth;
wh=(wh?wh:d.documentElement.offsetHeight);
ww=(ww?ww:d.documentElement.offsetWidth);
//--></script>
<script language="javascript"><!-- 
q='lik?id=23230&d='+u+'&r='+r+'&h='+h+'&f='+f;
q+='&c='+c+'&tz='+tz+'&cpu='+cpu+'&js='+js+'&wh='+wh;
q+='&ww='+ww+'&ss='+ss+'&cd='+cd+'&j='+j+'&x='+x;
d.write('<img src="http://adlik.akavita.com/bin/'+
q+'" alt="Akavita" '+
'border=0 width=88 height=31>');
if(lt){d.write(''+'');}
//--></script>
</a>
<!-- Akavita counter code -->


<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-8064649-1");
pageTracker._trackPageview();
} catch(err) {}</script>   

<!-- (C)2009 Gemius SA - gemiusAudience / t-styl.info / Home Page -->

<script type="text/javascript">

<!--//--><![CDATA[//><!--

var pp_gemius_identifier = new String('.K4wPTvIZxks9LEO4vSa6dUK7zdNbAOwChRryikQ5Vf.P7');

var pp_gemius_hitcollector = 'gaby.hit.gemius.pl';

//--><!]]>

</script>

<script type="text/javascript" src="/xgemius.js"></script>

<!-- mega code begin -->
<a href="http://www.fotocenter.by/">
<img src="http://t-styl.info/images/cms-image-000008318.gif" alt="Фотоцентр Mega" width="88" border="0" height="31" /></a>
<!-- mega code end -->
<!-- date.by code begin -->
<a href="http://www.date.by/">
<img src="http://img.date.by/i/date_button.gif" alt="DATE.BY | поиск, новости, работа, погода, фото | Беларусь, Минск" width="88" border="0" height="31" /></a>
<!-- date.by code end -->

<!-- BEGIN Rating All.BY CODE - ALTERNATING THIS CODE WILL CAUSE TERMINATION ACCOUNT-->
<A HREF="http://www.all.by/">
<IMG SRC="http://www.all.by/cgi-bin/rating.cgi?id=10068399&amp;ni=1" BORDER="0" WIDTH="88" HEIGHT="31" ALT="Rating All.BY"></a>
<!-- END Rating All.BY CODE-->
<!-- harodnia.com start-->
<a href="http://harodnia.com" target="_blank"><img src="http://old.t-styl.info/images/harodniacom.gif" alt="" width="88" border="0" height="31" />
</a>
<!-- END harodnia.com -->

<a href="http://belarys.info/"><img src="http://belarys.info/im/button.gif" border=0 width=88 height=31 alt="Каталог белорусских сайтов"></a>

<!-- catalog.tut.by code begin -->
<a href="http://catalog.tut.by/">
<img src="http://catalog.tut.by/images/catalog-tut.gif" alt="Каталог TUT.BY" width="88" border="0" height="31" /></a>
<!-- catalog.tut.by code end -->

<!-- начало 88х31 forum.grodno.net -->
<a href="http://forum.grodno.net" target="_blank"><img src="http://forum.grodno.net/forumgrodno88x31.gif" alt="Гродненский Форум." width="88" border="0" height="31" /></a>
<!-- конец 88х31 forum.grodno.net -->

</div>

<div style="clear:both;text-align:center;width:100%;">

<div><a style="text-decoration:none;color:white;" href="http://news.br.by/">новости</a></div>

<!-- Yandex.Metrika -->
<script src="http://mc.yandex.ru/metrika/watch.js" type="text/javascript"></script>
<div style="display:none;"><script type="text/javascript">
try { var yaCounter985691 = new Ya.Metrika(985691); } catch(e){}
</script></div>
<noscript><div style="position:absolute"><img src="http://mc.yandex.ru/watch/985691" alt="" /></div></noscript>
<!-- /Yandex.Metrika -->
<!-- Yandex.Metrika informer -->
<a href="http://metrika.yandex.ru/stat/?id=7123930&amp;from=informer"
target="_blank" rel="nofollow"><img src="http://bs.yandex.ru/informer/7123930/3_1_FFFFFFFF_EFEFEFFF_0_pageviews"
style="width:88px; height:31px; border:0;" alt="Яндекс.Метрика" title="Яндекс.Метрика: данные за сегодня (просмотры, визиты и уникальные посетители)" /></a>
<!-- /Yandex.Metrika informer -->

<!-- Yandex.Metrika counter -->
<div style="display:none;"><script type="text/javascript">
(function(w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter7123930 = new Ya.Metrika({id:7123930,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true});
        }
        catch(e) { }
    });
})(window, 'yandex_metrika_callbacks');
</script></div>
<script src="http://mc.yandex.ru/metrika/watch.js" type="text/javascript" defer="defer"></script>
<noscript><div><img src="http://mc.yandex.ru/watch/7123930" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->


</div>

