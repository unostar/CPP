<footer class="footer">
  <div class="footer-inner">
  <div class="feedback">
    <div class="block">
      <h2>Зваротная сувязь:</h2>
      <p>Маеш, што напісаць нам, хочаш прыслаць сваё фота або відэа, ведаеш навіну?</p>
      <p><a href="/?{{urlparameters options="template arche/tpl/sendmail.tpl"}}&type=editorial" class="button mail-to-editor sendmail">Ліст рэдактару</a></p>
    </div><!-- .block -->

    <div class="block second">
      <p>Знайшоў памылку, жадаеш паскардзіцца на публікацыю, маеш іншае меркаваньне?</p>
      <p><a href="/?{{urlparameters options="template arche/tpl/sendmail.tpl"}}&type=editorial&topic=Скарга ў рэдакцыю" class="button sendmail">Паскардзіцца ў рэдакцыю</a></p>
    </div><!-- .block second -->

    <div class="block">
      <p>Жадаеш атрымліваць інфармацыю пра новыя тэксты, што выстаўляюцца на arche.by</p>
      <p><a href="/?{{urlparameters options="template arche/tpl/sendmail.tpl"}}&type=subscription" class="button sendmail_subscribe">Падпіска на абнаўленьні</a></p>
    </div><!-- .block -->

    <div class="block donations">
      <p><strong>Хочаш памагчы “ARCHE”?</strong><br>Дзякуем за ўвагу і падтрымку!</p>
      <p><a href="" class="button donation">Скласьці ахвяраваньне</a></p>
    </div><!-- .block donations-->

  </div><!-- .feedback -->

  <nav class="nav-main">
    <ul>
{{list_sections constraints="number greater_equal 30 number smaller 200"}}
      <li><a href="/{{$gimme->language->code}}/page/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{/list_sections}}
      <li><a href="http://feeds.feedburner.com/ArchePacatak" class="rss">RSS</a></li>
      <li><a href="/by/page/about/">Пра нас</a></li>
    </ul>
  </nav><!-- .nav-main -->

  <div class="side">
    <nav>
      <h3>Архіў ARCHE:</h3>
      <ul>
        <li><a href="/by/page/archive/">Архіў сайту</a></li>
        <li><a href="http://arche.bymedia.net" target="_blank">Архіў 1998-2008 гг.</a></li>
      </ul>
    </nav>

    <nav>
      <h3>Рэкляма:</h3>
      <ul>
        <li><a href="/by/page/ads/">Банэры</a></li>
        <li><a href="/by/page/ads/">Рэкляма ў часопісе</a></li>
      </ul>
    </nav>

    <section class="social">
      <h3>Сачыце за намі ў сацыяльных сетках:</h3>
      <ul>
        <li class="twitter"><a href="http://twitter.com/ArchePacatak" target="_blank" title="Twitter">Twitter</a></li>
        <li class="facebook"><a href="http://www.facebook.com/pages/Часопіс-ARCHE/131398916954452" target="_blank" title="Facebook">Facebook</a></li>
        <li class="livejournal"><a href="http://community.livejournal.com/by_arche/" target="_blank" title="LiveJournal">Суполка <span>"Чытаючы ARCHE"</span></a></li>
        <li class="addthis"><div class="addthis_toolbox addthis_default_style "><a href="http://www.addthis.com/bookmark.php?v=250&amp;pubid=ra-4e41bd05678d09e5" class="addthis_button_compact">Падзяліцца</a></div></li>
      </ul>
    </section><!-- .social -->

    <p class="subscribe">
      <strong>Падпісны індэкс 00345</strong><br>
      <small>Падпіска на часопіс «ARCHE Пачатак» прымаецца ўва ўсіх аддзяленьнях «Белпошты»</small>
    </p><!-- .subscribe -->
  </div><!-- .side -->


{{include file="arche/tpl/footer-books-links.tpl"}}
{{* include file="arche/tpl/footer-video-links.tpl" *}}

  <div class="copyright">
    <p><strong>Беларускі мультымэдыйны партал</strong></p>
    <p class="reserved"><small>Усе правы засьцярожаныя</small></p>
    <p class="disclamer"><small>Перадрукоўка матэрыялаў з разьдзелу “Кнігарня “ARCHE” дазваляецца толькі зь пісьмовай згоды рэдакцыі.<br>Меркаваньне аўтараў артыкулаў можа не супадаць зь меркаваньнем рэдакцыі сайту.</small></p>
  </div><!-- .copyright -->

  <section class="buttons">
{{include file="arche/counters.tpl"}}
  </section><!-- .buttons -->

  </div><!-- .footer-inner -->
</footer><!-- .footer -->
{{include file="arche/javascripts.tpl"}}