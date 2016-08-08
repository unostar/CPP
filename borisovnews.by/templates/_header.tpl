<div class="header">

{{ set_default_issue }}

	<div class="logo-wrapper">
		<div class="logo"><a href="/"><img src="/templates/images/issue-logo.gif" alt="Борисовские новости"></a></div><!-- .logo -->

		<p class="issue-number">{{ $gimme->issue->name|wordwrap:10}}</p>

		<div class="search-bar">
			{{ search_form submit_button="Поиск" template="search.tpl" }}
				{{ camp_edit object="search" attribute="keywords" }}
			{{ /search_form }}
		</div><!-- .search-bar -->
	</div><!-- .logo-wrapper -->

	<div id="convertor"><p><a href="http://finance.blr.cc/converter/">Конвертер валют НБРБ</a><br /><span id="dateby"></span></p><span id="bodyby"></span></div>
	<script type="text/javascript" src="http://finance.blr.cc/xml/currency_by.js"></script>

	<div class="banner">
		<script type='text/javascript'><!--//<![CDATA[
		   var m3_u = (location.protocol=='https:'?'https://openx.omniton.net/delivery/ajs.php':'http://openx.omniton.net/delivery/ajs.php');
		   var m3_r = Math.floor(Math.random()*99999999999);
		   if (!document.MAX_used) document.MAX_used = ',';
		   document.write ("<scr"+"ipt type='text/javascript' src='"+m3_u);
		   document.write ("?zoneid=184");
		   document.write ('&amp;cb=' + m3_r);
		   if (document.MAX_used != ',') document.write ("&amp;exclude=" + document.MAX_used);
		   document.write (document.charset ? '&amp;charset='+document.charset : (document.characterSet ? '&amp;charset='+document.characterSet : ''));
		   document.write ("&amp;loc=" + escape(window.location));
		   if (document.referrer) document.write ("&amp;referer=" + escape(document.referrer));
		   if (document.context) document.write ("&context=" + escape(document.context));
		   if (document.mmm_fo) document.write ("&amp;mmm_fo=1");
		   document.write ("'><\/scr"+"ipt>");
		//]]>--></script><noscript><a href='http://openx.omniton.net/delivery/ck.php?n=a6f0b79e&amp;cb=INSERT_RANDOM_NUMBER_HERE' target='_blank'><img src='http://openx.omniton.net/delivery/avw.php?zoneid=184&amp;cb=INSERT_RANDOM_NUMBER_HERE&amp;n=a6f0b79e' border='0' alt='' /></a></noscript>
	</div><!-- .banner -->

	<div class="informers">
		<div class="informer">
			<a href="http://ecopress.by/ru/sect/66.html" title="Курсы валют в банках Минской области на www.ecopress.by" target="_blank"><img border="0" src="http://www.ecopress.by/cgi/oblast.php" alt="Курсы валют в банках Минской области на www.ecopress.by" width="180" height="103"></a>
		</div><!-- .informer -->
		<div class="informer">
			<table height="103" style="background-color:#e6e6dc; font-family:Tahoma,Arial; font-size:10px; color:#555555; margin-bottom: 5px;" cellpadding="0" cellspacing="0">
			<tr style="border-bottom:1px solid; border-bottom-color:#555555;">
			<script src="http://np.by/weather/informer.php?locationid=17&blocktype=1" language="javascript" type="text/javascript">
			</script></tr><tr><td colspan="4" align="right">
			<a href="http://np.by/" style="font-size:10; font-family:Tahoma,Arial; color:#aa0000">
			Новый Портал</a></td></tr></table>
		</div><!-- .informer -->
		<div class="informer">
			<a target="_BLANK" href="http://www.blr.cc/benzin/"><img src="http://www.blr.cc/img/benzin_belarus.gif" width="85" height="87" border="0" alt="Сколько стоит бензин в Белоруссии" /></a>
		</div><!-- .informer -->
	</div><!-- .informers -->

	<ul class="nav-main">
		<li{{if !$gimme->section->defined}} class="active"{{/if}}><a href="/">Главная</a></li>
		{{ list_sections constraints="number greater_equal 10 number smaller_equal 60" }}
		<li{{if $gimme->section->number == $gimme->default_section->number }} class="active"{{/if}}><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></li>
		{{ /list_sections }}
	</ul><!-- .nav-main -->

	<ul class="nav-additional">
		{{ set_issue number="1" }}
		{{ list_sections constraints="number greater 299 number smaller 360" }}
		<li><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></li>
		{{ /list_sections }}
		{{set_default_issue}}
		{{set_default_section}}
		{{set_default_article}}
		<li class="rss"><a href="http://{{ $gimme->publication->site }}/ru/rss">RSS</a></li>
		<li><a href="{{ uri options="template archive.tpl" }}">Архив</a></li>
	</ul><!-- .nav-additional -->

	<p class="url"><a href="/">borisovnews.by</a></p>

	{{*<div class="banner">
		{{ list_articles constraints="issue is 1 section is 430 number is 965" }}
			{{ $gimme->article->intro }}
		{{ /list_articles }}
	</div><!-- .banner -->*}}
</div><!-- .header -->

{{ include file="gallery-slider.tpl" }}
