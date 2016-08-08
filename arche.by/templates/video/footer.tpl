<footer class="footer">

	<div class="footer-inner">

	<div class="feedback">
		<div class="block send-video">
			<p>Стаў сьведкам цікавай падзеі? Хочаш прыслаць сваё відэа?</p>
			<p><a href="/?{{urlparameters options="template arche/tpl/sendmail.tpl"}}&type=editorial" class="button sendmail">Даслаць відэаролік</a></p>
		</div><!-- .block -->
		<div class="block second">
			<p>Знайшоў памылку, жадаеш паскардзіцца на публікацыю, маеш іншае меркаваньне?</p>
			<p><a href="/?{{urlparameters options="template arche/tpl/sendmail.tpl"}}&type=editorial&topic=Скарга ў рэдакцыю" class="button sendmail">Паскардзіцца ў рэдакцыю</a></p>
		</div><!-- .block second -->
		<div class="block">
			<p>Жадаеце атрымліваць інфармацыю пра новыя тэксты, што выстаўляюцца на arche.by</p>
			<p><a href="/?{{urlparameters options="template arche/tpl/sendmail.tpl"}}&type=subscription" class="button sendmail_subscribe">Падпіска на абнаўленьні</a></p>
		</div><!-- .block -->
		<div class="block donations">
			<p><strong>Хочаце памагчы “ARCHE”?</strong><br>Дзякуем за ўвагу і падтрымку!</p>
			<p><a href="" class="button donation">Скласьці ахвяраваньне</a></p>
		</div><!-- .block donations-->
	</div><!-- .feedback -->

	<nav class="nav-sub">
		<h3>Відэа:</h3>
		<div>
			<ul>
{{list_sections constraints="number smaller_equal 100"}}
				<li><a href="/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/">{{$gimme->section->name}}</a></li>
{{/list_sections}}
			</ul>
			<ul class="nav-sub-sub">
				<li><a href="/by/channel/archive/">Архіў відэа-ARCHE</a></li>
				<li><a href="">RSS-стужка</a></li>
			</ul><!-- .nav-sub-sub -->
		</div>
	</nav><!-- .nav-sub -->

{{include file="video/tpl/footer-books-links.tpl"}}
{{include file="video/tpl/footer-arche-links.tpl"}}

  <section class="social">
    <h3>Сачыце за намі ў сацыяльных сетках:</h3>
    <ul>
      <li class="twitter"><a href="http://twitter.com/ArchePacatak" target="_blank" title="Twitter">Twitter</a></li>
      <li class="facebook"><a href="http://www.facebook.com/pages/Часопіс-ARCHE/131398916954452" target="_blank" title="Facebook">Facebook</a></li>
      <li class="livejournal"><a href="http://community.livejournal.com/by_arche/" target="_blank" title="LiveJournal">Суполка <span>"Чытаючы ARCHE"</span></a></li>
      <li class="addthis"><div class="addthis_toolbox addthis_default_style "><a href="http://www.addthis.com/bookmark.php?v=250&amp;pubid=ra-4e41bd05678d09e5" class="addthis_button_compact">Падзяліцца</a></div></li>
    </ul>
  </section><!-- .social -->

	<div class="copyright">
		<p><strong>Беларускі мультымэдыйны партал</strong></p>
		<p class="reserved"><small>© Установа «Рэдакцыя часопісу «Архэ-Пачатак». Усе правы засьцярожаныя.</small></p>
		<p class="disclamer"><small>Калі вы заўважылі, што нейкая публікацыя апублікавана на сайце з парушэньнем аўтарскіх правоў, калі ласка, адразу <a href="/?{{urlparameters options="template arche/tpl/sendmail.tpl"}}&type=editorial&topic=Скарга ў рэдакцыю" class="more sendmail">паведамце аб гэтым у рэдакцыю</a>.</small></p>
	</div><!-- .copyright -->

  <section class="buttons">
{{include file="video/counters.tpl"}}
  </section><!-- .buttons -->

	</div><!-- .footer-inner -->

</footer><!-- .footer -->
{{include file="video/javascripts.tpl"}}
</body>
</html>