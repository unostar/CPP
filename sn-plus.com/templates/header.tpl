<div class="wrapper">

	<header class="header">

		{{ include file="tpl/_banner-header.tpl" }}

		{{ set_issue number="1" }}
		<nav class="nav-general">
			<ul>
				<li><a href="/">Главная</a></li>
				{{ list_sections constraints="number greater 599 number smaller 631" }}
					<li><a href="{{ url options="section" }}">{{ $gimme->section->name }}</a></li>
				{{ /list_sections }}
				<li class="old-version"><a href="http://old.sn-plus.com">Старая версия сайта</a></li>
			</ul>

			<ul class="social">
				<li class="rss"><a href="http://{{ $gimme->publication->site }}/{{ $gimme->language->code }}/page/rss/">RSS</a></li>
				<li class="twitter"><a href="">Twitter</a></li>
				<li class="facebook"><a href="http://www.facebook.com/profile.php?id=100003570545851">Facebook</a></li>
			</ul><!-- .social -->
		</nav><!-- .nav-general -->
		{{ set_default_section }}{{ set_default_article }}{{ unset_topic }}

		<h1 class="logo"><a href="/">Свободные новости Плюс</a></h1><!-- .logo -->

		{{ include file="tpl/header-search.tpl" }}

		<div class="informer exchange">
			<h4><a href="http://nbrb.by/">Курсы валют</a></h4>

			{{ include file="tpl/header-rates.tpl" }}		
		</div><!-- .informer exchange -->

		<div class="informer weather">
			<h4><a href="http://www.gismeteo.by/city/daily/4248/">Погода</a></h4>

			<p>{{ include file="tpl/header-weather.tpl" }}</p>
		</div><!-- .informer weather -->

		{{ include file="tpl/nav.tpl" }}

	</header><!-- .header -->

	<div class="middle">
