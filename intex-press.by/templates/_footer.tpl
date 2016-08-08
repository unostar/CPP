{{ unset_topic }}
<div id="footer" class="clearfix">
  <div class="footer-content">
    <div style="float:right;">
      <script type="text/javascript">
      var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
      document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
      </script>
      <script type="text/javascript">try {var pageTracker = _gat._getTracker("UA-4630152-6");pageTracker._trackPageview();} catch(err) {}</script>

      <!-- Akavita counter code -->
      <a rel="nofollow" target="_top" href="http://www.akavita.by/">
      <script language="javascript" type="text/javascript"><!--
      d=document;w=window;n=navigator;d.cookie="cc=1";
      r=''+escape(d.referrer);js=10;c=(d.cookie)?1:0;j=0;
      x=Math.random();u=''+escape(w.location.href);lt=0;
      h=history.length;t=new Date;f=(self!=top)?1:0;cd=0;
      tz=t.getTimezoneOffset();cpu=n.cpuClass;ww=wh=ss=0;
      //--></script><script language="javascript1.1" type="text/javascript"><!--
      js=11;j=(n.javaEnabled()?1:0);
      //--></script><script language="javascript1.2" type="text/javascript"><!--
      js=12;lt=1;s=screen;ss=s.width;
      cd=(s.colorDepth?s.colorDepth:s.pixelDepth);
      //--></script><script language="javascript1.3" type="text/javascript"><!--
      js=13;wh=w.innerHeight;ww=w.innerWidth;
      wh=(wh?wh:d.documentElement.offsetHeight);
      ww=(ww?ww:d.documentElement.offsetWidth);
      //--></script><script language="javascript" type="text/javascript"><!--
      q='lik?id=27951&d='+u+'&r='+r+'&h='+h+'&f='+f;
      q+='&c='+c+'&tz='+tz+'&cpu='+cpu+'&js='+js+'&wh='+wh;
      q+='&ww='+ww+'&ss='+ss+'&cd='+cd+'&j='+j+'&x='+x;
      d.write('<img src="http://adlik.akavita.com/bin/'+
      q+'" alt="Akavita: , ,    " '+
      'border=0 width=88 height=31 >');
      if(lt){d.write('<'+'!-- ');}//--></script><noscript>
      <img src="http://adlik.akavita.com/bin/lik?id=27951"
      border=0 height=31 width=88 alt="Akavita: , ,    ">
      </noscript><script language="JavaScript" type="text/javascript"><!--
      if(lt){d.write('--'+'>');}//--></script></a>
      <!-- Akavita counter code -->
    
            <!-- begin of Top100 code -->
      <script id="top100Counter" type="text/javascript" src="http://counter.rambler.ru/top100.jcn?1515912"></script>
      <!-- end of Top100 code -->
      <!-- begin of Top100 logo -->
      <a rel="nofollow" href="http://top100.rambler.ru/top100/"><img src="https://scounter.rambler.ru/img/top100/banner-88x31-rambler-darkblue2.gif" alt="Rambler's Top100" width="88" height="31" border="0" /></a>
      <!-- end of Top100 logo --> 

      
    
      <!-- BEGIN Rating All.BY CODE - ALTERNATING THIS CODE WILL CAUSE TERMINATION ACCOUNT-->
      <A rel="nofollow" HREF="http://www.all.by/">
      <IMG SRC="http://www.all.by/cgi-bin/rating.cgi?id=10063726&ni=1" BORDER="0" WIDTH="88" HEIGHT="31" ALT="Rating All.BY"></A>
      <!-- END Rating All.BY CODE-->
    </div>

    <p>Разделы</p>
    <p class="footer-links">
      {{list_sections constraints="number smaller 61 number not 5"}}<a href="{{uri}}">{{$gimme->section->name}}</a>{{if !$gimme->current_list->at_end}} / {{/if}}{{/list_sections}}
    </p>
    <br />
    <p>Intex-press</p>
    <p class="footer-links">
      <a href="{{uri options="issue template archive.tpl"}}">Архив новостей</a> / 
      {{list_sections constraints="number greater 299 number smaller 311"}}<a href="{{uri}}">{{$gimme->section->name}}</a> / {{/list_sections}}
      <a href="{{uri options="issue template rss-feeds.tpl"}}">RSS Feed</a> / 
      {{list_sections constraints="number greater 329 number smaller 331"}}<a href="{{uri}}">{{$gimme->section->name}}</a>{{/list_sections}}
    </p>
    <br />
    <p>Услуги</p>
    <p class="footer-links">
      {{list_sections constraints="number greater 319"}}<a href="{{uri}}">{{$gimme->section->name}}</a>{{/list_sections}}
    </p>
    <br />
    <p>Послать</p>
    <p class="footer-links">
      <a href="/templates/phpscripts/formmail/send.php" class="email">Новости</a> / <a href="/templates/phpscripts/formmail/send.php" class="email">Фото</a> / <a href="/templates/phpscripts/formmail/send.php" class="email">Аудио</a> / <a href="/templates/phpscripts/formmail/send.php" class="email">Видео</a> / <a href="/templates/phpscripts/formmail/send.php" class="email">Вашу работу</a> / <a href="/templates/phpscripts/formmail/send.php" class="email">Письмо редактору</a>
    </p>
    <p class="footer-copy">&copy; Copyright {{$smarty.now|camp_date_format:"%Y"}} Intex-press</p>
  </div>
</div>

<!-- (C)2008 Gemius SA - gemiusAudience / intex-press.by / Home Page -->
<script type="text/javascript">
<!--//--><![CDATA[//><!--
var pp_gemius_identifier = new String('.F5Lo.xMkMeHwZTrl5QwwsWn78ZBgFutR_MwV0Vmnjz.Q7');
var pp_gemius_hitcollector = 'gaby.hit.gemius.pl';
//--><!]]>
</script>
<script type="text/javascript" src="/xgemius.js"></script>