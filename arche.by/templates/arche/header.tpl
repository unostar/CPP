<header class="header">
	<div class="header-inner">
		<h1 class="logo"><a href="/"><img src="/templates/arche/img/logo.png" alt="Arche"></a></h1>
		<p class="welcome">Запрашаем на беларускі мультымэдыйны партал <strong>Arche.by</strong>!</p>
		{{include file="arche/tpl/header-menu.tpl"}}
		{{include file="arche/tpl/header-banner-995x60.tpl"}}
		<div id="cse-search-form"></div>
		<p class="make-donation"><a href="" class="button donation">Скласьці ахвяраваньне</a></p>
		<p class="date"><time datetime="{{$smarty.now|date_format:"%Y-%m-%d"}}">{{$smarty.now|camp_date_format:"%e %M %Y"}}</time></p>
		{{include file="arche/tpl/header-books-list.tpl"}}
	</div><!-- .header-inner -->
</header><!-- .header -->
