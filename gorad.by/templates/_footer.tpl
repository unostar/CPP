<div class="l-footer">
  <div class="b-f-menu g-tjustify">                                                                                                    
{{list_sections constraints="number smaller 100"}}
    <a href="/by/page/{{$gimme->section->url_name}}">{{$gimme->section->name}}</a>
{{/list_sections}}
{{set_issue number="1"}}
{{list_sections constraints="number greater 899 number smaller 910"}}
    <a href="{{uri options="section"}}">{{$gimme->section->name}}</a>
{{/list_sections}}
{{set_default_issue}}
    <a class="last" href="http://feeds.feedburner.com/Goradby">RSS стужка</a>
    <span class="g-tjustfix"></span>
  </div>
  <address>&copy; Gorad.by, 2010-{{$smarty.now|date_format:"%Y"}}г. Усе правы абаронены.<br />Пры выкарыстанні матэрыялаў сайта спасылка на крыніцу абавязковая.</address>
  <form class="form-h-search" method="post" action="/by/page/archive" name="search_articles">
  <fieldset><legend>Поиск по сайту</legend>
    <input type="hidden" value="2" name="tpl" />
    <input type="hidden" value="Шукаць" name="f_search_articles" />
    <div class="g-diblock"><input type="text" class="text" value="{{$gimme->search_articles_action->search_phrase}}" name="f_search_keywords" /></div>
    <div class="g-diblock"><span class="button-main"><input type="submit" name="f_search_articles" class="button-main-i" value="Шукаць" /></span></div>
  </fieldset>
  </form>
  <b class="b-f-logo"><a href="/">gorad.by</a></b>
</div>

<!--Akavita counter start-->
<script type="text/javascript">var AC_ID=45140;var AC_TR=false;
(function(){var l='http://adlik.akavita.com/acode.js'; var t='text/javascript';
try {var h=document.getElementsByTagName('head')[0];
var s=document.createElement('script'); s.src=l;s.type=t;h.appendChild(s);}catch(e){
document.write(unescape('%3Cscript src="'+l+'" type="'+t+'"%3E%3C/script%3E'));}})();
</script><span id="AC_Image"></span>
<noscript><a target='_top' href='http://www.akavita.by/'>
<img src='http://adlik.akavita.com/bin/lik?id=45140&it=1'
border='0' height='1' width='1' alt='Akavita'/>
</a></noscript>
<!--Akavita counter end-->
<!-- catalog.tut.by code begin -->
<a href="http://catalog.tut.by/" style="margin-left:10px;">
<img src="http://catalog.tut.by/images/catalog-tut.gif" border=0 width=88 height=31 alt="Каталог TUT.BY"></a>
<!-- catalog.tut.by code end -->

<!-- BEGIN Rating All.BY CODE - ALTERNATING THIS CODE WILL CAUSE TERMINATION ACCOUNT-->
<A HREF="http://www.all.by/" style="margin-left:10px;">
<IMG SRC="http://www.all.by/cgi-bin/rating.cgi?id=10080102&amp;ni=3" BORDER="0" WIDTH="88" HEIGHT="31" ALT="Rating All.BY"></A>
<!-- END Rating All.BY CODE--> 

<a href="http://br.by/" target="_blank" title="BR.by - Каталог и поиск" style="margin-left:10px;"><img src="http://br.by/ratebutt.cgi?id=86978" border=0 width=88 height=31 title="BR.by - Каталог и поиск"></a>

<a href="http://www.myminsk.com/catalog/in.php?id=ID" style="margin-left:10px;"><img src="http://www.myminsk.com/catalog/banners/banner.gif" width="90" height="33" border="0" alt="Белорусский рейтинг MyMinsk.com"></a>

<a href="http://minsk-in.net/top/?idp=3624" style="margin-left:10px;"><img alt="Рейтинг сайтов vMinske.by" width="88" height="31" border="0" src="http://top.minsk-in.net/counter.php?id=3624&btype=110"/></a>

<!-- Yandex.Metrika informer -->
<a href="http://metrika.yandex.ru/stat/?id=10829969&amp;from=informer"
target="_blank" rel="nofollow"><img src="//bs.yandex.ru/informer/10829969/3_0_E0E0E0FF_C0C0C0FF_0_pageviews"
style="width:88px; height:31px; border:0;" alt="Яндекс.Метрика" title="Яндекс.Метрика: данные за сегодня (просмотры, визиты и уникальные посетители)" onclick="try{Ya.Metrika.informer({i:this,id:10829969,type:0,lang:'ru'});return false}catch(e){}"/></a>
<!-- /Yandex.Metrika informer -->

<!-- Yandex.Metrika counter -->
<div style="display:none;"><script type="text/javascript">
(function(w, c) {
    (w[c] = w[c] || []).push(function() {
        try {
            w.yaCounter10829969 = new Ya.Metrika({id:10829969, enableAll: true, webvisor:true});
        }
        catch(e) { }
    });
})(window, "yandex_metrika_callbacks");
</script></div>
<script src="//mc.yandex.ru/metrika/watch.js" type="text/javascript" defer="defer"></script>
<noscript><div><img src="//mc.yandex.ru/watch/10829969" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

<!--LiveInternet counter--><script type="text/javascript">document.write("<a href='http://www.liveinternet.ru/click' target=_blank><img src='//counter.yadro.ru/hit?t22.6;r" + escape(document.referrer) + ((typeof(screen)=="undefined")?"":";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?screen.colorDepth:screen.pixelDepth)) + ";u" + escape(document.URL) +";h"+escape(document.title.substring(0,80)) +  ";" + Math.random() + "' border=0 width=88 height=31 alt='' title='LiveInternet: показано число просмотров за 24 часа, посетителей за 24 часа и за сегодня'><\/a>")</script><!--/LiveInternet-->