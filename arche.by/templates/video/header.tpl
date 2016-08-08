<header class="header">
	<h1 class="logo"><a href="/"><img src="/templates/video/img/logo.png" alt="Arche"> Відэа</a></h1>
	<p class="welcome">Запрашаем на беларускі мультымэдыйны партал <strong>Arche.by</strong>!</p>

{{include file="video/tpl/header-menu.tpl"}}

  <div id="cse-search-form"></div>

	<dl class="read-us">
		<dt>чытайце нас:</dt>
		<dd>
			<ul>
				<li class="rss"><a href="" title="RSS">RSS</a></li>
				<li class="livejournal"><a href="http://community.livejournal.com/by_arche/" target="_blank" title="LiveJournal">LiveJournal</a></li>
				<li class="facebook"><a href="http://www.facebook.com/pages/Часопіс-ARCHE/131398916954452" target="_blank" title="Facebook">Facebook</a></li>
				<li class="twitter"><a href="http://twitter.com/ArchePacatak" target="_blank" title="Twitter">Twitter</a></li>
			</ul>
		</dd>
	</dl><!-- .read-us -->

	<p class="date"><time datetime="{{$smarty.now|date_format:"%Y-%m-%d"}}">{{$smarty.now|camp_date_format:"%e %M %Y"}}</time></p>

</header><!-- .header -->
