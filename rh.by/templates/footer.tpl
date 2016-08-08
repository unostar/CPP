<div id="footer">
  <div id="footer-inner">
    <div id="foot-left">
      <p class="naslov">Напiсаць у рэдакцыю!</p>
      <p class="intro">Тут вы можаце пакінуць сваё паведамленне для рэдакцыі, падзяліўшыся навіной, выказаўшы сваё меркаванне аб газеце ці яе сайце.</p>
      <p class="furthermore"><a href="/templates/php/mail/send.php">Напiсаць</a></p>
    </div><!-- /#foot-left -->
    <div id="foot-right">
      <ul id="footer-menu">
{{ local }}
{{ set_issue number="1" }}
{{ set_section number="4" }}
{{ list_articles length="1" }}
      <li><a href="{{ uri options="template rss.tpl" }}"><img alt="RSS button" src="/templates/images/rssbutt.gif" />RSS</a></li>
{{ /list_articles }}
{{ /local }}
        <li><a href="{{ uri options="template archive.tpl" }}">АРХІЎ</a></li>
{{ local }}
{{ set_issue number="1" }}
{{ set_section number="5" }}
{{ list_articles length="1" }}
      <li><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></li>
{{ /list_articles }}
{{ set_section number="2" }}
{{ list_articles length="1" }}
      <li><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></li>
{{ /list_articles }}
{{* set_section number="3"}}{{list_articles length="1"}}<li><a href="{{uri options="article"}}" style="color:red;">{{$gimme->article->name}}</a></li>{{/list_articles *}}
{{ set_section number="1" }}
{{ list_articles length="1" }}
      <li><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></li>
{{ /list_articles }}
{{ /local }}
        <li class="curli"><a href="http://rh.by">rh.by</a></li>
      </ul>
      {{ include file="footer-search-box.tpl" }}
      <p class="copyright"><a href="mailto:regionnews@promedia.by">regionnews@promedia.by</a></p>
      <p class="copyright">© "Рэгіянальная газета", 2009-{{$smarty.now|date_format:"%Y"}}</p>
    </div><!-- /#foot-right -->
    <div style="clear:both;text-align:right;"><!-- COUNTERS -->
      <script type="text/javascript">
      var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
      document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
      </script>
      <script type="text/javascript">
      try {
      var pageTracker = _gat._getTracker("UA-10459271-1");
      pageTracker._trackPageview();
      } catch(err) {}</script>
      
      <!-- (C)2009 Gemius SA - gemiusAudience / rh.by / Home Page -->
      <script type="text/javascript">
      <!--//--><![CDATA[//><!--
      var pp_gemius_identifier = new String('.A6Q_7RRP8zA6pM23ycdLPUIzeAFolu7ADkPu2P.tSH.t7');
      var pp_gemius_hitcollector = 'gaby.hit.gemius.pl';
      //--><!]]>
      </script>
      <script type="text/javascript" src="/xgemius.js"></script>
      
      <!-- Akavita counter code -->
      <script language='javascript' type='text/javascript'><!--
      d=document;w=window;n=navigator;d.cookie='cc=1';
      r=''+escape(d.referrer);js=10;c=(d.cookie)?1:0;j=0;
      x=Math.random();u=''+escape(w.location.href);lt=0;
      h=history.length;t=new Date;f=(self!=top)?1:0;cd=0;
      tz=t.getTimezoneOffset();cpu=n.cpuClass;ww=wh=ss=0;
      //--></script><script language='javascript1.1' type='text/javascript'><!--
      js=11;j=(n.javaEnabled()?1:0);
      //--></script><script language='javascript1.2' type='text/javascript'><!--
      js=12;lt=1;s=screen;ss=s.width;ssh=s.height;
      cd=(s.colorDepth?s.colorDepth:s.pixelDepth);
      //--></script><script language='javascript1.3' type='text/javascript'><!--
      js=13;wh=w.innerHeight;ww=w.innerWidth;
      wh=(wh?wh:d.documentElement.offsetHeight);
      ww=(ww?ww:d.documentElement.offsetWidth);
      //--></script><script language='javascript' type='text/javascript'><!--
      q='lik?id=39973&d='+u+'&r='+r+'&h='+h+'&f='+f;
      q+='&c='+c+'&tz='+tz+'&cpu='+cpu+'&js='+js+'&wh='+wh;
      q+='&ww='+ww+'&ss='+ss+'&ssh='+ssh+'&cd='+cd+'&j='+j+'&x='+x;
      d.write('<a target="_top" href="http://www.akavita.by/">'+
      '<img src="http://adlik.akavita.com/bin/'+q+'" alt="Akavita" '+
      'border="0" width="88" height="31"/></a>');
      //--></script><noscript>
      <a target='_top' href='http://www.akavita.by/'>
      <img src='http://adlik.akavita.com/bin/lik?id=39973' border='0'
      height='31' width='88' alt='Akavita' /></a></noscript>
      <!-- Akavita counter code -->
      &nbsp;&nbsp;&nbsp;&nbsp;
      <!-- BEGIN Rating All.BY CODE - ALTERNATING THIS CODE
      WILL CAUSE TERMINATION ACCOUNT-->
      <A HREF="http://www.all.by/">
      <IMG SRC="http://www.all.by/cgi-bin/rating.cgi?
      id=10060857&amp;ni=1" BORDER="0" WIDTH="88"
      HEIGHT="31" ALT="Rating All.BY"></A>
      <!-- END Rating All.BY CODE-->
    </div><!-- /COUNTERS -->
  </div><!-- /#footer-inner -->
</div><!-- /#footer -->