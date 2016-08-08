<div id="footer" class="crearfix">
    <div class="footer-content crearfix">

  <div class="footer-links">
      <p class="link"><a href="/">На главную</a>|
      {{ set_issue number="1" }}
      {{ set_section number="260" }}
      {{ list_articles }}
      <a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>|
      {{ /list_articles }}
      <a href="{{ uri options="section" }}">Управление подпиской</a>|
      <a href="{{ uri options="template print-all-pages.tpl" }}">Весь номер</a></p>
        <p class="link">
     {{ set_section number="250" }}
     {{ list_articles }}
     <a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>|
     {{ /list_articles }}
     <a href="{{ uri options="template rss-feeds.tpl" }}">RSS</a>|
     {{ set_section number="240" }}
     {{ list_articles length="1" }}
      <a href="{{ uri options="article" }}">О нас</a>|
     {{ /list_articles }}
     {{ set_section number="265" }}
     {{ list_articles length="1" }}
     <a href="{{ uri options="article" }}">Редакция</a>|
     {{ /list_articles }}

     {{if $gimme->default_issue->number=="1"}}{{set_current_issue}}{{else}}{{set_default_issue}}{{/if}}

     <a target="smail" class="smail" href="http://www.belmarket.by/templates/phpscripts/smail/send.php">Обратная связь</a>|
     <a href="{{ uri options="template archive.tpl" }}">Архив</a></p>
      <div class="search">
      {{ search_form submit_button="Искать" template="search.tpl"  button_html_code="class=\"button\"" }}
      <label>Искать по сайту</label>{{ camp_edit object="search" attribute="keywords" html_code="type=\"text\" style=\"width:200px\"" }}
      {{ /search_form }}<p><a href="{{ uri options="template search.tpl" }}">расширенный</a></p>
      </div>

       <p class="copyright">&copy; ЗАО &quot;Медиарынок&quot;, {{ $smarty.now|camp_date_format:"%Y" }} г. Все права защищены.<br/>При использовании материалов сайта ссылка (для Интернет-изданий -- гиперссылка) на источник обязательна.</p><br/>
      
    </div>
   
  </div>
 
 <!-- Akavita counter code --><a target=_top
      href="http://www.akavita.by/">
      <script language="javascript"><!--
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
      q='lik?id=7280&d='+u+'&r='+r+'&h='+h+'&f='+f;
      q+='&c='+c+'&tz='+tz+'&cpu='+cpu+'&js='+js+'&wh='+wh;
      q+='&ww='+ww+'&ss='+ss+'&cd='+cd+'&j='+j+'&x='+x;
      d.write('<img src="http://adlik.akavita.com/bin/'+
      q+'" alt="Akavita: каталог, рейтинг, счетчик для сайтов Беларуси" '+
      'border=0 width=88 height=31 />');
      if(lt){d.write('<'+'!-- ');}//--></script><noscript>
      <img src="http://adlik.akavita.com/bin/lik?id=7280"
      border=0 height=31 width=88 alt="Akavita: каталог, рейтинг, счетчик для сайтов Беларуси" />
      </noscript><script language="JavaScript"><!--
      if(lt){d.write('--'+'>');}//--></script></a>
      <!-- Akavita counter code -->

</div>

{{ if $gimme->search_articles_action->defined }}
<script type="text/javascript">window.onload=searchhi.process("{{ $gimme->search_articles_action->search_phrase }}");</script>
{{ else }}
<script type="text/javascript">window.onload=searchhi.campsiteSearchHighlight();</script>
{{ /if }}

<!--mernik counter start-->
<script type='text/javascript'>
var SID=111;
(function(){ var l, t, h, s, u, d; l='http://s3.countby.com/code.js';
 t='text/javascript'; d=document; try { h=d.getElementsByTagName('head')[0];
  s=d.createElement('script'); s.src=l; s.type=t; h.appendChild(s); }catch(e){
   u='%3Cscript%20src="'+l+'"%20type="'+t+'"%3E%3C/script%3E'; d.write(unescape(u));}})();
   </script><noscript>
   <img src='http://s3.countby.com/cnt?id=111' border='0' height='1'  width='1' alt='' />
   </noscript>
   <!--mernik counter end-->