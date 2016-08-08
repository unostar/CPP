{{unset_topic}}
<div class="links">
<a href="/" title="ТУТ І ЦЯПЕР (www.svabodaby.net)" alt="ТУТ І ЦЯПЕР (www.svabodaby.net)"><img src="/templates/img/footer-logo.gif" /></a>
<p>
<a href="/">Тытульная</a>&nbsp;&nbsp;|&nbsp;&nbsp;
{{list_sections constraints="number greater 9 number smaller 79"}}
<a href="{{uri options="section"}}">{{$gimme->section->name}}</a>{{if !$gimme->current_list->at_end}}&nbsp;&nbsp;|&nbsp;&nbsp;{{/if}}
{{/list_sections}}
<br />
<a target="_blank" href="http://{{ $gimme->publication->site }}/feed/index.rss">RSS стужка</a>&nbsp;&nbsp;|&nbsp;&nbsp;
<a href="{{uri options="template archive.tpl"}}">Архiў</a>&nbsp;&nbsp;|&nbsp;&nbsp;
<a href="http://{{$gimme->publication->site}}/templates/php/mail/send.php" class="popup">Лiст рэдактару</a>&nbsp;&nbsp;|&nbsp;&nbsp;
<a href="http://{{$gimme->publication->site}}/templates/php/mail/send.php" class="popup">Рассылка</a>
</p>
</div>

<div class="counters">
<script type="text/javascript">
  var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
  document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
  </script>
  <script type="text/javascript">
  var pageTracker = _gat._getTracker("UA-3294654-1");
  pageTracker._initData();
  pageTracker._trackPageview();
</script>

<!-- (C)2009 Gemius SA - gemiusAudience / svabodaby.net / Home Page -->
<script type="text/javascript">
<!--//--><![CDATA[//><!--
var pp_gemius_identifier = new String('AqiQ.eNaPwROPHzyCY4R9dUo7zdNSAOw1CNLAFYNdzD.g7');
var pp_gemius_hitcollector = 'gaby.hit.gemius.pl';
//--><!]]>
</script>

<script type="text/javascript" src="/xgemius.js"></script>
<!-- Akavita counter code --><a target=_top
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
q='lik?id=25954&d='+u+'&r='+r+'&h='+h+'&f='+f;
q+='&c='+c+'&tz='+tz+'&cpu='+cpu+'&js='+js+'&wh='+wh;
q+='&ww='+ww+'&ss='+ss+'&cd='+cd+'&j='+j+'&x='+x;
d.write('<img src="http://adlik.akavita.com/bin/'+
q+'" alt="Akavita: каталог, рейтинг, счетчик для сайтов Беларуси" '+
'border=0 width=88 height=31>');
if(lt){d.write('<'+'!-- ');}//--></script><noscript>
<img src="http://adlik.akavita.com/bin/lik?id=25954"
border=0 height=31 width=88 alt="Akavita: каталог, рейтинг, счетчик для сайтов Беларуси">
</noscript><script language="JavaScript"><!--
if(lt){d.write('--'+'>');}//--></script></a>
<!-- Akavita counter code -->
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<!-- BEGIN Rating All.BY CODE - ALTERNATING THIS CODE WILL CAUSE TERMINATION ACCOUNT-->
<A HREF="http://www.all.by/">
<IMG SRC="http://www.all.by/cgi-bin/rating.cgi?id=10057716&ni=1" BORDER="0" WIDTH="88" HEIGHT="31" ALT="Rating All.BY"></A>
<!-- END Rating All.BY CODE-->

</div>
{{set_default_topic}}