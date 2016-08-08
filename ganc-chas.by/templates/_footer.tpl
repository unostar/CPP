<div class="l-footer">
  <div class="b-semifooter">
    <form class="b-sf_search" method="post" action="/by/page/archive" name="search_articles">
      <fieldset>
        <label>поиск: <input type="text" class="text-t1" name="f_search_keywords" /></label>
        <input type="submit" class="button-greent1" value="Искать" name="f_search_articles" />
      </fieldset>
    </form>
    <b class="g-bg bg-semifooter"></b>
       
</div>
{{set_issue number="1"}}

  <div class="g-clean">
    <span class="b-f-header">РУБРИКИ:</span>
{{list_sections columns="3" length="6" constraints="number smaller 100"}}
{{if $gimme->current_list->column == 1}}
    <ul class="b-f-list">
{{/if}}
      <li><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></li>
{{if $gimme->current_list->column == 3 || $gimme->current_list->at_end }}
    </ul>
{{/if}}
{{/list_sections}}

    <span class="b-f-header">УСЛУГИ:</span>
{{list_sections columns="3" length="6" constraints="number greater_equal 200 number smaller_equal 250"}}
{{if $gimme->current_list->column == 1}}
    <ul class="b-f-list">
{{/if}}
      <li><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></li>
{{if $gimme->current_list->column == 3 || $gimme->current_list->at_end }}
    </ul>
{{/if}}
{{/list_sections}}
    <span class="b-f-header">ГАНЦАВІЦКІ ЧАС:</span>
    <ul class="b-f-list">
{{list_sections length="3" constraints="number greater 250 number smaller 300"}}
      <li><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></li>
{{/list_sections}}
      <li><a href="/feed/index.rss">RSS лента</a></li>
    </ul>
{{set_default_issue}}
  </div>
<p class="copyright">Copyright © Ганцавіцкі час, 2010-{{$smarty.now|date_format:"%Y"}}. Все права защищены. При использовании материалов сайта ссылка на источник обязательна.</p>

<div style="text-align:center;margin:10px 10px 0 0;">

  <script type="text/javascript">var AC_ID=43611;var AC_TR=false;
  (function(){var l='http://adlik.akavita.com/acode.js'; var t='text/javascript';
  try {var h=document.getElementsByTagName('head')[0];
  var s=document.createElement('script'); s.src=l;s.type=t;h.appendChild(s);}catch(e){
  document.write(unescape('%3Cscript src="'+l+'" type="'+t+'"%3E%3C/script%3E'));}})();
  </script><div id="AC_Image" style="display: inline"></div>

  <a rel="nofollow" href="http://www.myminsk.com/catalog/in.php?id=8563"><img src="http://www.myminsk.com/catalog/banners/banner.gif" width="90" height="33" border="0" alt="Белорусский рейтинг MyMinsk.com" /></a>

  <!-- Start of StatCounter Code -->
  <script type="text/javascript">
  var sc_project=6759423; 
  var sc_invisible=0; 
  var sc_security="db389325"; 
  </script>

  <script type="text/javascript" src="http://www.statcounter.com/counter/counter.js"></script><noscript><div class="statcounter"><a title="customizable counter" href="http://statcounter.com/free_hit_counter.html" target="_blank" rel="nofollow"><img class="statcounter" src="http://c.statcounter.com/6759423/0/db389325/0/" alt="customizable counter" ></a></div></noscript>
  <!-- End of StatCounter Code -->

</div>

</div>



<script type="text/javascript">
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-19253858-1']);
_gaq.push(['_trackPageview']);
(function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();                      
</script>