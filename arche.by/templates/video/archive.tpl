<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>Рубрика</title>
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="/favicon.ico">
	<!--[if lt IE 9]><script src="js/html5.js"></script><![endif]-->

	<link rel="stylesheet" href="main.css">
	<link rel="stylesheet" href="js/ui/ui.css">
	<!--[if lte IE 8]><link rel="stylesheet" href="ie.css"><![endif]-->
	<!--[if lte IE 7]><link rel="stylesheet" href="ie7.css"><![endif]-->

	<!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.3/jquery.min.js"></script> -->
	<script>window.jQuery || document.write("<script src='js/jquery-1.6.3.min.js'>\x3C/script>")</script>

	<script src="js/plugins.js"></script>
	<script src="js/scripts.js"></script>

</head>
<body>

	<header class="header">

		<h1 class="logo"><a href=""><img src="img/logo.png" alt="Arche"> Відэа</a></h1>

		<p class="welcome">Запрашаем на беларускі мультымэдыйны партал <strong>Arche.by</strong>!</p>

		<nav class="nav-main">
			<ul>
				<li class="active"><a href="">Галоўная ARCHE-Відэа</a></li>
				<li><a href="">Мабільнае відэа</a></li>
				<li><a href="">ARCHE-Відэа</a></li>
				<li><a href="">Кнігарня ARCHE</a></li>
				<li>
					<a href="">ARCHE-Tэксты</a>

					<ul class="nav-main-sub" style="">
						<li><a href="">Ідэі</a></li>
						<li><a href="">Навука</a></li>
						<li><a href="">Агляды</a></li>
						<li><a href="">Творы</a></li>
						<li><a href="">Гутаркі</a></li>
						<li><a href="">Жарты</a></li>
						<li><a href="">Маніторынг</a></li>
						<li><a href="">Блогі</a></li>
					</ul><!-- .nav-main-sub -->
				</li>
				<li><a href="">Фотагалерэя</a></li>
			</ul>
		</nav><!-- .nav-main -->

		<form action="/by/38/" class="search">
			<p><input type="text" name="q" value="пошук на сайце"></p>
			<p class="submit"><button type="submit" name="sa">ОК</button></p>

			<p><img src="img/powered-by-google.png" alt="Powered by Google"></p>

			<input type="hidden" name="tpl" value="154">
			<input type="hidden" name="cx" value="005827618818561026790:xqfyfyene4w">
			<input type="hidden" name="cof" value="FORID:9">
			<input type="hidden" name="ie" value="UTF-8">
		</form><!-- .search -->

		<dl class="read-us">
			<dt>чытайце нас:</dt>
			<dd>
				<ul>
					<li class="rss"><a href="" title="RSS">RSS</a></li>
					<li class="livejournal"><a href="" title="LiveJournal">LiveJournal</a></li>
					<li class="facebook"><a href="" title="Facebook">Facebook</a></li>
					<li class="twitter"><a href="" title="Twitter">Twitter</a></li>
				</ul>
			</dd>
		</dl><!-- .read-us -->

		<p class="date"><time datetime="2008-06-03">3 чэрвеня 2008</time></p>

	</header><!-- .header -->

	<div class="middle">

		<div class="main">

			<section class="archive-page">
				<header>
					<h2>Архіў сайту</h2>
				</header>

				<div class="search-pane">
					<form action="" name="search_articles" class="search-articles">
						<fieldset>
							<label>Шукаць:</label>
							<input type="text" name="f_search_keywords">
							<label class="all-words">па ўсіх словах <input type="checkbox" name="f_match_all"></label>
						</fieldset>
						<fieldset class="place">
							<label>Пошук па:</label>
							<ul>
								<li><label><input type="radio" value="content" name="f_search_scope" checked> тэксьце</label></li>
								<li><label><input type="radio" value="title" name="f_search_scope"> загалоўку</label></li>
								<li><label><input type="radio" value="author" name="f_search_scope"> аўтару</label></li>
							</ul>
						</fieldset>
						<fieldset>
							<label>Рубрыка:</label>
							<select name="f_search_issue">
								<option value="0"></option>
								<option value="1">Навука</option>
								<option value="2">Навука</option>
								<option value="3">Навука</option>
							</select>
						</fieldset>
						<fieldset>
							<label>Па тэме:</label>
							<select name="f_search_section">
								<option value="0">Усе рубрыкі</option>
								<option value="1">Спорт</option>
								<option value="2">Спорт</option>
								<option value="3">Спорт</option>
							</select>
						</fieldset>
						<fieldset class="date">
							<label>Дата:</label>
							<ul>
								<li>
									<label for="f_search_start_date">з</label>
									<input type="text" name="f_search_start_date" id="f_search_start_date" class="hasDatepicker">
									<a href="" class="pickdate">Выбраць дату</a>
								</li>
								<li>
									<label for="f_search_end_date">па</label>
									<input type="text" name="f_search_end_date" id="f_search_end_date" class="hasDatepicker">
									<a href="" class="pickdate">Выбраць дату</a>
								</li>
							</ul>
						</fieldset>

						<p class="submit"><button type="submit" name="f_search_articles">Шукаць у архіве</button></p>
					</form><!-- .articles-search -->

					<div class="calendar">

						<div id="ArchiveCalendar" class="hasDatepicker"><div class="ui-datepicker-inline ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"><div class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all"><a title="&lt;Папяр" onclick="DP_jQuery_1308492968187.datepicker._adjustDate('#ArchiveCalendar', -1, 'M');" class="ui-datepicker-prev ui-corner-all"><span class="ui-icon ui-icon-circle-triangle-w">&lt;Папяр</span></a><a title="Наст&gt;" onclick="DP_jQuery_1308492968187.datepicker._adjustDate('#ArchiveCalendar', +1, 'M');" class="ui-datepicker-next ui-corner-all"><span class="ui-icon ui-icon-circle-triangle-e">Наст&gt;</span></a><div class="ui-datepicker-title"><span class="ui-datepicker-month">Чэрвень</span>&nbsp;<span class="ui-datepicker-year">2011</span></div></div><table class="ui-datepicker-calendar"><thead><tr><th><span title="панядзелак">Пн</span></th><th><span title="аўторак">Аў</span></th><th><span title="серада">Ср</span></th><th><span title="чацвер">Чц</span></th><th><span title="пятніца">Пт</span></th><th class="ui-datepicker-week-end"><span title="субота">Сб</span></th><th class="ui-datepicker-week-end"><span title="нядзеля">Нд</span></th></tr></thead><tbody><tr><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class="  ui-state-highlight active"><a href="#" class="ui-state-default">1</a></td><td class="  ui-state-highlight active"><a href="#" class="ui-state-default">2</a></td><td class="  ui-state-highlight active"><a href="#" class="ui-state-default">3</a></td><td class=" ui-datepicker-week-end  ui-state-highlight active"><a href="#" class="ui-state-default">4</a></td><td class=" ui-datepicker-week-end  ui-state-highlight active"><a href="#" class="ui-state-default">5</a></td></tr><tr><td class="  ui-state-highlight active"><a href="#" class="ui-state-default">6</a></td><td class="  ui-state-highlight active"><a href="#" class="ui-state-default">7</a></td><td class="  ui-state-highlight active"><a href="#" class="ui-state-default">8</a></td><td class="  ui-state-highlight active"><a href="#" class="ui-state-default">9</a></td><td class="  ui-state-highlight active"><a href="#" class="ui-state-default">10</a></td><td class=" ui-datepicker-week-end  ui-state-highlight active"><a href="#" class="ui-state-default">11</a></td><td class=" ui-datepicker-week-end  ui-state-highlight active"><a href="#" class="ui-state-default">12</a></td></tr><tr><td class="  ui-state-highlight active"><a href="#" class="ui-state-default">13</a></td><td class="  ui-state-highlight active"><a href="#" class="ui-state-default">14</a></td><td class="  ui-state-highlight active"><a href="#" class="ui-state-default">15</a></td><td class="  ui-state-highlight active"><a href="#" class="ui-state-default">16</a></td><td class="  ui-state-highlight active"><a href="#" class="ui-state-default">17</a></td><td class=" ui-datepicker-week-end  ui-state-highlight active"><a href="#" class="ui-state-default">18</a></td><td class=" ui-datepicker-week-end ui-datepicker-days-cell-over ui-datepicker-unselectable ui-state-disabled  ui-datepicker-current-day ui-datepicker-today"><span class="ui-state-default">19</span></td></tr><tr><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">20</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">21</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">22</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">23</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">24</span></td><td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">25</span></td><td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">26</span></td></tr><tr><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">27</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">28</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">29</span></td><td class=" ui-datepicker-unselectable ui-state-disabled "><span class="ui-state-default">30</span></td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td><td class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td></tr></tbody></table></div></div>

					</div><!-- .calendar -->

				</div><!-- .search-pane -->

				<dl class="choose-year">
					<dt>Архіў па гадах:</dt>
					<dd>
						<ul>
							<li class="current"><a href="">2011</a></li>
							<li><a href="">2010</a></li>
							<li><a href="">2009</a></li>
							<li><a href="">2008</a></li>
							<li><a href="">1998—2008</a></li>
						</ul>
					</dd>
				</dl><!-- .choose-year -->

				<dl class="months">
					<dt class="month">Ліпень</dt>

					<dd class="month-articles">
						<dl class="month-sections">
							<dt class="name"><a href="">Ідэі</a></dt>

							<dd class="articles">
								<ul>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Пост-электаральны класавы аналіз (блогер revanshist)"></a>
										<a href="">Пост-электаральны класавы аналіз (блогер revanshist)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Беларусь – не Егіпет. Але… (Міхась Ільінскі)"></a>
										<a href="">Беларусь – не Егіпет. Але… (Міхась Ільінскі)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)"></a>
										<a href="">Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія"></a>
										<a href="">Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
								</ul>
							</dd><!-- .articles -->

							<dt class="name"><a href="">Ідэі</a></dt>

							<dd class="articles">
								<ul>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Пост-электаральны класавы аналіз (блогер revanshist)"></a>
										<a href="">Пост-электаральны класавы аналіз (блогер revanshist)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Беларусь – не Егіпет. Але… (Міхась Ільінскі)"></a>
										<a href="">Беларусь – не Егіпет. Але… (Міхась Ільінскі)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)"></a>
										<a href="">Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія"></a>
										<a href="">Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
								</ul>
							</dd><!-- .articles -->

							<dt class="name"><a href="">Ідэі</a></dt>

							<dd class="articles">
								<ul>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Пост-электаральны класавы аналіз (блогер revanshist)"></a>
										<a href="">Пост-электаральны класавы аналіз (блогер revanshist)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Беларусь – не Егіпет. Але… (Міхась Ільінскі)"></a>
										<a href="">Беларусь – не Егіпет. Але… (Міхась Ільінскі)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)"></a>
										<a href="">Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія"></a>
										<a href="">Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
								</ul>
							</dd><!-- .articles -->

						</dl><!-- .month-sections -->
					</dd><!-- .month-articles -->

					<dt class="month">Ліпень</dt>

					<dd class="month-articles">
						<dl class="month-sections">
							<dt class="name"><a href="">Ідэі</a></dt>

							<dd class="articles">
								<ul>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Пост-электаральны класавы аналіз (блогер revanshist)"></a>
										<a href="">Пост-электаральны класавы аналіз (блогер revanshist)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Беларусь – не Егіпет. Але… (Міхась Ільінскі)"></a>
										<a href="">Беларусь – не Егіпет. Але… (Міхась Ільінскі)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)"></a>
										<a href="">Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія"></a>
										<a href="">Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
								</ul>
							</dd><!-- .articles -->

							<dt class="name"><a href="">Ідэі</a></dt>

							<dd class="articles">
								<ul>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Пост-электаральны класавы аналіз (блогер revanshist)"></a>
										<a href="">Пост-электаральны класавы аналіз (блогер revanshist)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Беларусь – не Егіпет. Але… (Міхась Ільінскі)"></a>
										<a href="">Беларусь – не Егіпет. Але… (Міхась Ільінскі)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)"></a>
										<a href="">Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія"></a>
										<a href="">Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
								</ul>
							</dd><!-- .articles -->

							<dt class="name"><a href="">Ідэі</a></dt>

							<dd class="articles">
								<ul>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Пост-электаральны класавы аналіз (блогер revanshist)"></a>
										<a href="">Пост-электаральны класавы аналіз (блогер revanshist)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Беларусь – не Егіпет. Але… (Міхась Ільінскі)"></a>
										<a href="">Беларусь – не Егіпет. Але… (Міхась Ільінскі)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)"></a>
										<a href="">Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія"></a>
										<a href="">Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
								</ul>
							</dd><!-- .articles -->

						</dl><!-- .month-sections -->
					</dd><!-- .month-articles -->

					<dt class="month">Ліпень</dt>

					<dd class="month-articles">
						<dl class="month-sections">
							<dt class="name"><a href="">Ідэі</a></dt>

							<dd class="articles">
								<ul>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Пост-электаральны класавы аналіз (блогер revanshist)"></a>
										<a href="">Пост-электаральны класавы аналіз (блогер revanshist)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Беларусь – не Егіпет. Але… (Міхась Ільінскі)"></a>
										<a href="">Беларусь – не Егіпет. Але… (Міхась Ільінскі)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)"></a>
										<a href="">Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія"></a>
										<a href="">Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
								</ul>
							</dd><!-- .articles -->

							<dt class="name"><a href="">Ідэі</a></dt>

							<dd class="articles">
								<ul>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Пост-электаральны класавы аналіз (блогер revanshist)"></a>
										<a href="">Пост-электаральны класавы аналіз (блогер revanshist)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Беларусь – не Егіпет. Але… (Міхась Ільінскі)"></a>
										<a href="">Беларусь – не Егіпет. Але… (Міхась Ільінскі)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)"></a>
										<a href="">Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія"></a>
										<a href="">Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
								</ul>
							</dd><!-- .articles -->

							<dt class="name"><a href="">Ідэі</a></dt>

							<dd class="articles">
								<ul>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Пост-электаральны класавы аналіз (блогер revanshist)"></a>
										<a href="">Пост-электаральны класавы аналіз (блогер revanshist)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Беларусь – не Егіпет. Але… (Міхась Ільінскі)"></a>
										<a href="">Беларусь – не Егіпет. Але… (Міхась Ільінскі)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)"></a>
										<a href="">Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія"></a>
										<a href="">Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
								</ul>
							</dd><!-- .articles -->

						</dl><!-- .month-sections -->
					</dd><!-- .month-articles -->

					<dt class="month">Ліпень</dt>

					<dd class="month-articles">
						<dl class="month-sections">
							<dt class="name"><a href="">Ідэі</a></dt>

							<dd class="articles">
								<ul>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Пост-электаральны класавы аналіз (блогер revanshist)"></a>
										<a href="">Пост-электаральны класавы аналіз (блогер revanshist)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Беларусь – не Егіпет. Але… (Міхась Ільінскі)"></a>
										<a href="">Беларусь – не Егіпет. Але… (Міхась Ільінскі)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)"></a>
										<a href="">Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія"></a>
										<a href="">Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
								</ul>
							</dd><!-- .articles -->

							<dt class="name"><a href="">Ідэі</a></dt>

							<dd class="articles">
								<ul>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Пост-электаральны класавы аналіз (блогер revanshist)"></a>
										<a href="">Пост-электаральны класавы аналіз (блогер revanshist)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Беларусь – не Егіпет. Але… (Міхась Ільінскі)"></a>
										<a href="">Беларусь – не Егіпет. Але… (Міхась Ільінскі)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)"></a>
										<a href="">Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія"></a>
										<a href="">Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
								</ul>
							</dd><!-- .articles -->

							<dt class="name"><a href="">Ідэі</a></dt>

							<dd class="articles">
								<ul>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Пост-электаральны класавы аналіз (блогер revanshist)"></a>
										<a href="">Пост-электаральны класавы аналіз (блогер revanshist)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Беларусь – не Егіпет. Але… (Міхась Ільінскі)"></a>
										<a href="">Беларусь – не Егіпет. Але… (Міхась Ільінскі)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)"></a>
										<a href="">Польскі Сейм: шчырасць ці суцэльная Realpolitik (Ігар Ціханенка)</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
									<li>
										<a href="" class="preview"><img src="img/temp/archive-1.jpg" alt="Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія"></a>
										<a href="">Настаўнік года: Беларусы загавораць на роднай мове, калі ўсвядомяць, што яны ня рускія</a> &gt;&gt;
										<time datetime="2011-03-22">22/03/2001</time>
										<small>Праглядаў: 2044</small>
									</li>
								</ul>
							</dd><!-- .articles -->

						</dl><!-- .month-sections -->
					</dd><!-- .month-articles -->

				</dl><!-- .months -->

			</section><!-- .archive-page -->

			<ul class="banners">
				<li><a href=""><img src="img/temp/banner-500-100.png" alt=""></a></li>
				<li><a href=""><img src="img/temp/banner-170-100.png" alt=""></a></li>
			</ul><!-- .banners -->

		</div><!-- .main -->

		<aside class="aside">

			<section class="banner">
				<img src="img/temp/banner-250-130.png" alt="banner">
			</section><!-- .banner -->

			<section class="books">
				<header>
					<h2><a href="">Кнігарня ARCHE</a></h2>
				</header>

				<ul class="books-list">
					<li class="shelf shelf-visible">
						<div class="book">
							<a href="" class="cover"><img src="img/temp/books-1.jpg" alt="Часопіс “ARCHE” №12-2010 г."></a>

							<h3><a href="">Часопіс “ARCHE” №12-2010 г.</a></h3>

							<ul class="actions">
								<li><a href="">Увесь зьмест &gt;&gt;</a></li>
								<li><a href="">Купіць on-line &gt;&gt;</a></li>
								<li><a href="">Падпісацца &gt;&gt;</a></li>
							</ul><!-- .actions -->
						</div><!-- .book -->
						<div class="book">
							<a href="" class="cover"><img src="img/temp/books-2.jpg" alt="Вітальд Бярнацкі. Паўстаньне Хмяльніцкага: Ваенныя дзеяньні ў Літве ў 1648—1649 г."></a>

							<h3><a href="">Вітальд Бярнацкі. Паўстаньне Хмяльніцкага: Ваенныя дзеяньні ў Літве ў 1648—1649 г.</a></h3>

							<ul class="actions">
								<li><a href="">Увесь зьмест &gt;&gt;</a></li>
								<li><a href="">Купіць on-line &gt;&gt;</a></li>
								<li><a href="">Парэкамэндаваць сябру &gt;&gt;</a></li>
							</ul><!-- .actions -->
						</div><!-- .book -->
						<div class="book">
							<a href="" class="cover"><img src="img/temp/books-2.jpg" alt="Станіслаў Станкевіч. Беларускія элементы ў польскай рамантычнай паэзіі"></a>

							<h3><a href="">Станіслаў Станкевіч. Беларускія элементы ў польскай рамантычнай паэзіі</a></h3>

							<ul class="actions">
								<li><a href="">Увесь зьмест &gt;&gt;</a></li>
								<li><a href="">Купіць on-line &gt;&gt;</a></li>
								<li><a href="">Парэкамэндаваць сябру &gt;&gt;</a></li>
							</ul><!-- .actions -->
						</div><!-- .book -->
						<div class="book">
							<a href="" class="cover"><img src="img/temp/books-1.jpg" alt="Часопіс “ARCHE” №12-2010 г."></a>

							<h3><a href="">Часопіс “ARCHE” №12-2010 г.</a></h3>

							<ul class="actions">
								<li><a href="">Увесь зьмест &gt;&gt;</a></li>
								<li><a href="">Купіць on-line &gt;&gt;</a></li>
								<li><a href="">Падпісацца &gt;&gt;</a></li>
							</ul><!-- .actions -->
						</div><!-- .book -->
					</li><!-- .shelf -->
					<li class="shelf">
						<div class="book">
							<a href="" class="cover"><img src="img/temp/books-1.jpg" alt="Станіслаў Станкевіч. Беларускія элементы ў польскай рамантычнай паэзіі"></a>

							<h3><a href="">Станіслаў Станкевіч. Беларускія элементы ў польскай рамантычнай паэзіі</a></h3>

							<ul class="actions">
								<li><a href="">Увесь зьмест &gt;&gt;</a></li>
								<li><a href="">Купіць on-line &gt;&gt;</a></li>
								<li><a href="">Парэкамэндаваць сябру &gt;&gt;</a></li>
							</ul><!-- .actions -->
						</div><!-- .book -->
						<div class="book">
							<a href="" class="cover"><img src="img/temp/books-1.jpg" alt="Часопіс “ARCHE” №12-2010 г."></a>

							<h3><a href="">Часопіс “ARCHE” №12-2010 г.</a></h3>

							<ul class="actions">
								<li><a href="">Увесь зьмест &gt;&gt;</a></li>
								<li><a href="">Купіць on-line &gt;&gt;</a></li>
								<li><a href="">Падпісацца &gt;&gt;</a></li>
							</ul><!-- .actions -->
						</div><!-- .book -->
						<div class="book">
							<a href="" class="cover"><img src="img/temp/books-2.jpg" alt="Вітальд Бярнацкі. Паўстаньне Хмяльніцкага: Ваенныя дзеяньні ў Літве ў 1648—1649 г."></a>

							<h3><a href="">Вітальд Бярнацкі. Паўстаньне Хмяльніцкага: Ваенныя дзеяньні ў Літве ў 1648—1649 г.</a></h3>

							<ul class="actions">
								<li><a href="">Увесь зьмест &gt;&gt;</a></li>
								<li><a href="">Купіць on-line &gt;&gt;</a></li>
								<li><a href="">Парэкамэндаваць сябру &gt;&gt;</a></li>
							</ul><!-- .actions -->
						</div><!-- .book -->
						<div class="book">
							<a href="" class="cover"><img src="img/temp/books-1.jpg" alt="Часопіс “ARCHE” №12-2010 г."></a>

							<h3><a href="">Часопіс “ARCHE” №12-2010 г.</a></h3>

							<ul class="actions">
								<li><a href="">Увесь зьмест &gt;&gt;</a></li>
								<li><a href="">Купіць on-line &gt;&gt;</a></li>
								<li><a href="">Падпісацца &gt;&gt;</a></li>
							</ul><!-- .actions -->
						</div><!-- .book -->
					</li><!-- .shelf -->
				</ul><!-- .books-list -->

				<ul class="books-directions">
					<li class="active"><a href="#" class="prev" title="Папярэднія 4 кнігі">Папярэднія 4 кнігі</a></li>
					<li><a href="#" class="next" title="Наступныя 4 кнігі">Наступныя 4 кнігі</a></li>
				</ul><!-- .books-directions -->

				<p>Перайсьці ў <a href="">кнігарнЮ arche >></a></p>
			</section><!-- .books -->

			<section class="popular-topics">
				<h2>Папулярныя тэмы</h2>

				<ul class="tag-cloud">
					<li><span style="font-size: 140%"><a href="/?tpl=582&tag=мяжа" title="Артыкулаў з тэгам «мяжа»: 51">мяжа</a></span></li><li><span style="font-size: 119%"><a href="/?tpl=582&tag=суседзі" title="Артыкулаў з тэгам «суседзі»: 32">суседзі</a></span></li><li><span style="font-size: 102%"><a href="/?tpl=582&tag=выстава" title="Артыкулаў з тэгам «выстава»: 16">выстава</a></span></li><li><span style="font-size: 103%"><a href="/?tpl=582&tag=дабрачыннасць" title="Артыкулаў з тэгам «дабрачыннасць»: 17">дабрачыннасць</a></span></li><li><span style="font-size: 117%"><a href="/?tpl=582&tag=экалогія" title="Артыкулаў з тэгам «экалогія»: 30">экалогія</a></span></li><li><span style="font-size: 98%"><a href="/?tpl=582&tag=інтэрнэт" title="Артыкулаў з тэгам «інтэрнэт»: 12">інтэрнэт</a></span></li><li><span style="font-size: 90%"><a href="/?tpl=582&tag=рэцэнзіі" title="Артыкулаў з тэгам «рэцэнзіі»: 5">рэцэнзіі</a></span></li><li><span style="font-size: 122%"><a href="/?tpl=582&tag=студэнты" title="Артыкулаў з тэгам «студэнты»: 35">студэнты</a></span></li><li><span style="font-size: 166%"><a href="/?tpl=582&tag=улады" title="Артыкулаў з тэгам «улады»: 75">улады</a></span></li><li><span style="font-size: 164%"><a href="/?tpl=582&tag=права" title="Артыкулаў з тэгам «права»: 74">права</a></span></li><li><span style="font-size: 118%"><a href="/?tpl=582&tag=падарожжы" title="Артыкулаў з тэгам «падарожжы»: 31">падарожжы</a></span></li><li><span style="font-size: 167%"><a href="/?tpl=582&tag=здарэнні" title="Артыкулаў з тэгам «здарэнні»: 76">здарэнні</a></span></li><li><span style="font-size: 214%"><a href="/?tpl=582&tag=асобы" title="Артыкулаў з тэгам «асобы»: 120">асобы</a></span></li><li><span style="font-size: 125%"><a href="/?tpl=582&tag=хоббі" title="Артыкулаў з тэгам «хоббі»: 37">хоббі</a></span></li><li><span style="font-size: 139%"><a href="/?tpl=582&tag=гісторыя" title="Артыкулаў з тэгам «гісторыя»: 50">гісторыя</a></span></li><li><span style="font-size: 112%"><a href="/?tpl=582&tag=здароўе" title="Артыкулаў з тэгам «здароўе»: 25">здароўе</a></span></li><li><span style="font-size: 133%"><a href="/?tpl=582&tag=адукацыя" title="Артыкулаў з тэгам «адукацыя»: 45">адукацыя</a></span></li><li><span style="font-size: 96%"><a href="/?tpl=582&tag=фота" title="Артыкулаў з тэгам «фота»: 11">фота</a></span></li><li><span style="font-size: 144%"><a href="/?tpl=582&tag=спорт" title="Артыкулаў з тэгам «спорт»: 55">спорт</a></span></li><li><span style="font-size: 203%"><a href="/?tpl=582&tag=культура" title="Артыкулаў з тэгам «культура»: 110">культура</a></span></li><li><span style="font-size: 176%"><a href="/?tpl=582&tag=эканоміка" title="Артыкулаў з тэгам «эканоміка»: 85">эканоміка</a></span></li><li><span style="font-size: 154%"><a href="/?tpl=582&tag=палітыка" title="Артыкулаў з тэгам «палітыка»: 64">палітыка</a></span></li><li><span style="font-size: 240%"><a href="/?tpl=582&tag=грамадства" title="Артыкулаў з тэгам «грамадства»: 144">грамадства</a></span></li>
				</ul>
			</section><!-- .popular-topics -->

			<section class="banner">
				<img src="img/temp/banner-270-60.png" alt="banner">
			</section><!-- .banner -->

			<section class="banner">
				<img src="img/temp/banner-270-60.png" alt="banner">
			</section><!-- .banner -->

			<h2 class="texts"><a href="">ARCHE-ТЭКСТЫ:</a></h2>

			<section class="texts">
				
				<h2>Галоўныя навіны:</h2>

				<ul class="articles-list">
					<li>
						<h3><a href="">Шэсьць рэктараў сталі неўязнымі ў ЭС&nbsp;<span class="more">&gt;&gt;</span></a></h3>

						<footer class="article-footer">
							<time datetime="2011-03-22">22/03/2011</time>
							<a href="" class="comments-count">каментары (1)</a>
						</footer><!-- .article-footer -->
					</li>
					<li>
						<h3><a href="">Вольскі з "Белай яблыняй грому" ў Гродне&nbsp;<span class="more">&gt;&gt;</span></a></h3>

						<footer class="article-footer">
							<time datetime="2011-03-22">22/03/2011</time>
						</footer><!-- .article-footer -->
					</li>
					<li>
						<h3><a href="">Шэсьць рэктараў сталі неўязнымі ў ЭС&nbsp;<span class="more">&gt;&gt;</span></a></h3>

						<footer class="article-footer">
							<time datetime="2011-03-22">22/03/2011</time>
							<a href="" class="comments-count">каментары (5)</a>
						</footer><!-- .article-footer -->
					</li>
				</ul><!-- .articles-list -->

				<h2>Важнае:</h2>

				<ul class="articles-list">
					<li>
						<h3><a href="">Шэсьць рэктараў сталі неўязнымі ў ЭС&nbsp;<span class="more">&gt;&gt;</span></a></h3>
					</li>
					<li>
						<h3><a href="">Вольскі з "Белай яблыняй грому" ў Гродне&nbsp;<span class="more">&gt;&gt;</span></a></h3>
					</li>
					<li>
						<h3><a href="">Шэсьць рэктараў сталі неўязнымі ў ЭС&nbsp;<span class="more">&gt;&gt;</span></a></h3>
					</li>
					<li>
						<h3><a href="">Вольскі з "Белай яблыняй грому" ў Гродне&nbsp;<span class="more">&gt;&gt;</span></a></h3>
					</li>
					<li>
						<h3><a href="">Шэсьць рэктараў сталі неўязнымі ў ЭС&nbsp;<span class="more">&gt;&gt;</span></a></h3>
					</li>
				</ul><!-- .articles-list -->

			</section><!-- .texts -->

			<section class="banner">
				<img src="img/temp/banner-270-60.png" alt="banner">
			</section><!-- .banner -->

		</aside><!-- .aside -->

	</div><!-- .middle -->

	<footer class="footer">

		<div class="footer-inner">

		<div class="feedback">
			<div class="block send-video">
				<p>Стаў сьведкам цікавай падзеі? Хочаш прыслаць сваё відэа?</p>

				<p><a href="" class="button">Даслаць відэаролік</a></p>
			</div><!-- .block -->

			<div class="block second">
				<p>Знайшоў памылку, жадаеш паскардзіцца на публікацыю, маеш іншае меркаваньне?</p>

				<p><a href="" class="button">Паскардзіцца ў рэдакцыю</a></p>
			</div><!-- .block second -->

			<div class="block">
				<p>Жадаеце атрымліваць інфармацыю пра новыя тэксты, што выстаўляюцца на arche.by</p>

				<p><a href="" class="button">Падпіска на абнаўленьні</a></p>
			</div><!-- .block -->

			<div class="block donations">
				<p><strong>Хочаце памагчы “ARCHE”?</strong><br>Дзякуем за ўвагу і падтрымку!</p>

				<p><a href="" class="button donation">Скласьці ахвяраваньне</a></p>
			</div><!-- .block donations-->

			<form action="/by/38/" class="search">
				<p><input type="text" name="q" value="пошук на сайце"></p>
				<p class="submit"><button type="submit" name="sa">ОК</button></p>

				<input type="hidden" name="tpl" value="154">
				<input type="hidden" name="cx" value="005827618818561026790:xqfyfyene4w">
				<input type="hidden" name="cof" value="FORID:9">
				<input type="hidden" name="ie" value="UTF-8">
			</form><!-- .search -->
		</div><!-- .feedback -->

		<nav class="nav-sub">
			<h3>Відэа:</h3>

			<div>
				<ul>
					<li><a href="">Палітычная сцэна</a></li>
					<li><a href="">Прапаганда</a></li>
					<li><a href="">Фальклёр</a></li>
					<li><a href="">Супраціў і пратэсты</a></li>
					<li><a href="">Музыка</a></li>
					<li><a href="">Фільмы</a></li>
					<li><a href="">Найноўшая гісторыя Беларусі</a></li>
					<li><a href="">Падзеі і цырымоніі</a></li>
					<li><a href="">Прамовы і інтэрвію</a></li>
					<li><a href="">далей >></a></li>
				</ul>

				<ul class="nav-sub-sub">
					<li><a href="">Архіў відэа-ARCHE</a></li>
					<li><a href="">RSS-стужка</a></li>
				</ul><!-- .nav-sub-sub -->
			</div>
		</nav><!-- .nav-sub -->

		<nav class="nav-sub">
			<h3>Кнігарня ARCHE:</h3>

			<div>
				<ul>
					<li><a href="">Старажытныя гісторыя</a></li>
					<li><a href="">Сярэднявечча</a></li>
					<li><a href="">600 годзьдзе бітвы пад Грунвальдам</a></li>
					<li><a href="">XVI стагодзьдзе</a></li>
					<li><a href="">XVII стагодзьдзе</a></li>
					<li><a href="">XVIII стагодзьдзе</a></li>
					<li><a href="">XIX стагодзьдзе</a></li>
					<li><a href="">далей >></a></li>
				</ul>

				<ul class="nav-sub-sub">
					<li><a href="">Прайс-ліст</a></li>
					<li><a href="">Як аформіць заказ</a></li>
					<li><a href="">Аплата</a></li>
					<li><a href="">Дастава</a></li>
					<li><a href="">Навінкі</a></li>
					<li><a href="">Акцыі</a></li>
				</ul><!-- .nav-sub-sub -->
			</div>
		</nav><!-- .nav-sub -->

		<nav class="nav-sub texts">
			<h3><a href="">ARCHE тэксты:</a></h3>

			<ul>
				<li><a href="">Ідэі Навука</a></li>
				<li><a href="">Агляды</a></li>
				<li><a href="">Творы</a></li>
				<li><a href="">Гутаркі</a></li>
				<li><a href="">Жарты</a></li>
				<li><a href="">Маніторынг</a></li>
				<li><a href="">Блогі </a></li>
			</ul>
		</nav><!-- .nav-sub -->

		<section class="social">
			<h3>Сачыце за намі ў сацыяльных сетках:</h3>

			<ul>
				<li class="twitter"><a href="" title="Twitter">Twitter</a></li>
				<li class="facebook"><a href="" title="Facebook">Facebook</a></li>
				<li class="livejournal"><a href="" title="LiveJournal">Суполка <span>"Чытаючы ARCHE"</span></a></li>
				<li class="addthis">
					<div class="addthis_toolbox addthis_default_style "><a href="http://www.addthis.com/bookmark.php?v=250&amp;pubid=xa-4dd059c01594906c" class="addthis_button_compact">Падзяліцца</a></div>
				</li>
			</ul>
		</section><!-- .social -->

		<div class="copyright">
			<p><strong>Беларускі мультымэдыйны партал</strong></p>
			<p class="reserved"><small>© Установа «Рэдакцыя часопісу «Архэ-Пачатак». Усе правы засьцярожаныя</small></p>
			<p class="disclamer"><small>Калі вы заўважылі, што нейкая публікацыя апублікавана на сайце з парушэньнем аўтарскіх правоў, калі ласка, адразу паведамце аб гэтым у рэдакцыю.</small></p>
		</div><!-- .copyright -->

		<section class="buttons">

			<a href=""><img src="img/temp/akavita.png" alt="Akavita"></a>

		</section><!-- .buttons -->

		</div><!-- .footer-inner -->

	</footer><!-- .footer -->

</body>
</html>