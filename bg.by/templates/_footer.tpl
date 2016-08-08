<div id="footer">
<p>
{{ local }}
{{ set_current_issue }}
{{ list_sections constraints="number greater 7 number smaller 71" }}
<a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a>
<img src="/templates/images/separator-pipe.gif" alt="separator" />
{{ /list_sections }}
{{list_sections constraints="number is 1"}}
<a href="{{uri options="section"}}">Архив</a>
{{/list_sections}}
{{ /local }}
</p>
<p>
{{ local }}
{{ set_current_issue }}
{{ list_sections constraints="number greater 99 number smaller 211" }}
<a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a>
<img src="/templates/images/separator-pipe.gif" alt="separator" />
{{ /list_sections }}
<noindex><nofollow><a href="http://bulkovo.livejournal.com/" target="_blank">Блог</a></nofollow></noindex>
<img src="/templates/images/separator-pipe.gif" alt="separator" />
<a href="{{ uri options="template rss.tpl" }}" class="rss">RSS</a>
{{ /local }}
</p>

<p>
{{ list_sections constraints="number greater 499 number smaller 531" }}
<a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a>
<img src="/templates/images/separator-pipe.gif" alt="separator" />
{{ /list_sections }}
{{ list_sections constraints="number greater 349 number smaller 451" }}
{{ if $gimme->section->number == "450" }}
{{ list_articles length="1" ignore_issue="true" order="bypublishdate desc" }}
<a href="{{ uri options="article" }}">{{ $gimme->section->name }}</a>
{{ /list_articles }}
{{ else }}
{{ if $gimme->section->number == "350" }}
<a href="{{ uri options="section" }}" class="foto">{{ $gimme->section->name }}</a>
<img src="/templates/images/separator-pipe.gif" alt="separator" />
{{ else }}
<a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a>
<img src="/templates/images/separator-pipe.gif" alt="separator" />
{{ /if }}
{{ /if }}
{{ /list_sections }}
</p>

<p class="copyright">&copy; Copyright {{ $smarty.now|camp_date_format:"%Y" }} Брестская Газета

<!-- Akavita counter code -->
<script language="javascript" type="text/javascript"><!--
d=document;w=window;n=navigator;d.cookie="cc=1";
r=''+escape(d.referrer);js=10;c=(d.cookie)?1:0;j=0;
x=Math.random();u=''+escape(w.location.href);lt=0;
h=history.length;t=new Date;f=(self!=top)?1:0;cd=0;
tz=t.getTimezoneOffset();cpu=n.cpuClass;ww=wh=ss=0;
//--></script><script language="javascript1.1" type="text/javascript"><!--
js=11;j=(n.javaEnabled()?1:0);
//--></script><script language="javascript1.2" type="text/javascript"><!--
js=12;lt=1;s=screen;ss=s.width;ssh=s.height;
cd=(s.colorDepth?s.colorDepth:s.pixelDepth);
//--></script><script language="javascript1.3" type="text/javascript"><!--
js=13;wh=w.innerHeight;ww=w.innerWidth;
wh=(wh?wh:d.documentElement.offsetHeight);
ww=(ww?ww:d.documentElement.offsetWidth);
//--></script><script language="javascript" type="text/javascript"><!--
q='lik?id=41109&d='+u+'&r='+r+'&h='+h+'&f='+f;
q+='&c='+c+'&tz='+tz+'&cpu='+cpu+'&js='+js+'&wh='+wh;
q+='&ww='+ww+'&ss='+ss+'&ssh='+ssh+'&cd='+cd+'&j='+j+'&x='+x;
d.write('<a target="_top" href="http://www.akavita.by/">'+
'<img src="http://adlik.akavita.com/bin/'+
q+'" alt="Akavita" '+
'border="0" width="88" height="31" align="right" style="top:-20px" /></a>');
//--></script><noscript>
<a target="_top" href="http://www.akavita.by/">
<img src="http://adlik.akavita.com/bin/lik?id=41109" border="0"
height="31" width="88"
alt="Akavita" align="right" style="top:-20px" /></a></noscript>
<!-- Akavita counter code -->

</p>

{{ include file="banner-footer.tpl }}

</div>

<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-33448843-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>

<!-- (C)2008 Gemius SA - gemiusAudience / b-g.by / Home Page -->
<script type="text/javascript">
<!--//--><![CDATA[//><!--
var pp_gemius_identifier = new String('ofHlprNJbZ4duejgDjt56OVEzdsRywOKh1.HYHcudEP.E7');
var pp_gemius_hitcollector = 'gaby.hit.gemius.pl';
//--><!]]>
</script>
<script type="text/javascript" src="/xgemius.js"></script>

<!-- Yandex.Metrika counter -->
<div style="display:none;"><script type="text/javascript">
(function(w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter11340292 = new Ya.Metrika({id:11340292, enableAll: true});
        }
        catch(e) { }
    });
})(window, "yandex_metrika_callbacks");
</script></div>
<script src="//mc.yandex.ru/metrika/watch.js" type="text/javascript" defer="defer"></script>
<noscript><div><img src="//mc.yandex.ru/watch/11340292" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->