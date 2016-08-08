{{set_issue number="1"}}
<!-- Шапка -->
<div class="l-header">
  <div class="top-banner">
    {{include file="_banner-header.tpl"}}
  </div><!-- .top-banner -->

  <h1><a href="/">Ганцавiцкi час<span></span></a></h1>
  <div class="b-h-topmenu">
    <ul class="g-clean">
{{list_sections constraints="number greater_equal 200 number smaller 300"}}
      <li><a href="{{uri options="section"}}">{{$gimme->section->name}}</a></li>
{{/list_sections}}
      <li><a href="/feed/index.rss"><i class="ico ico-rss"></i>&nbsp;RSS</a></li>
      <li class="social"><a href="http://www.twitter.com/ganc_chas" target="_blank" rel="nofollow"><img src="http://twitter-badges.s3.amazonaws.com/t_mini-a.png" alt="Follow ganc_chas on Twitter"/></a></li>
      <li class="social"><a href="http://vk.com/ganc_chas" target="_blank" rel="nofollow"><img src="/templates/images/vkontakte.png" alt="ВКонтакте"/></a></li>
      <li class="social"><a href="http://www.facebook.com/GancChas" target="_blank" rel="nofollow"><img src="/templates/images/facebook.png" alt="Facebook"/></a></li>
    </ul>
  </div>
{{set_issue number="1"}}
  <ul class="b-h-mainmenu g-clean">
 
{{list_sections constraints="number smaller 100"}}
    <li><a href="{{uri options="section"}}"{{if $gimme->section->number == $gimme->default_section->number}} class="active"{{/if}}>{{$gimme->section->name}}</a></li>
{{/list_sections}}
  </ul>
{{set_current_issue}}

{{include file="_header-photo-block.tpl"}}

  <span class="b-h-curno">
      <iframe width="161" height="80" frameborder="0" src="http://free.timeanddate.com/clock/i38lrm5w/n285/szw80/szh80/hocfff/hbw0/cf100/hgr0/fiv0/fas20/fac444/fdi90/mqc000/mqs2/mql3/mqw4/mqd70/mhc000/mhs2/mhl3/mhw4/mhd70/mmv0/hhs3/hms3/hsc09f"></iframe>
      <br>
      <iframe width="161" height="20" frameborder="0" src="http://free.timeanddate.com/clock/i38lrmoj/n285/tlru33/fn3/fs15/fc555/tt1/tm1"></iframe>
  </span>
</div>
<!-- //шапка -->
<noscript>
<div class="b-main header-huge noscript"><p><span class="ui-icon-alert"></span>
Гэты сайт для сваёй работы выкарыстоўвае Javascript. Здаецца гэта тэхналогія адключана ці не падтрымліваецца вашым браўзэрам.
Калі ласка, праверце налады браўзэра і ўключыце Javascript.
Вы можаце скарыстацца палегчанай версіяй сайта, прыдатнай таксама для любых мабільных прылад.
</p></div>
</noscript>
{{set_issue number="1"}}
{{set_default_section}}
{{set_default_article}}