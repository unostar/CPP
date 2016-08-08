$(document).ready(function(){		/* Начинаем jQuery. Все скрипты идут ниже.
--------------------------------------------------------------------------------------------------------------------------------- */


/* Верхнее меню
--------------------------------------------------------------------------------------------------------------------------------- */

$('.header .nav-main').delegate('li:not(.current):has(.second-level)', 'click', function(e){
	e.preventDefault();
	$(this).addClass('current').siblings().removeClass('current');
});

/* Главные новости на главной странице
--------------------------------------------------------------------------------------------------------------------------------- */
$('.featured').delegate('li:not(.current)', 'hover', function() {
	$(this).addClass('current').siblings().removeClass('current');
});

/* Фотогалерея на главной
--------------------------------------------------------------------------------------------------------------------------------- */
$('.photogallery').slides({
	container: 'gallery',
	pagination: true,
	generatePagination: false,
	paginationClass: 'photogallery-pagination'
});

/* Навигация в рубриках
--------------------------------------------------------------------------------------------------------------------------------- */
$("#section-content").delegate(".section-pagination a", "click", function(){
	if ($(this).attr("href")){
		$("#section-content").block();
		$("#section-content").load( $(this).attr("href")+"&ajax=true");
	}
	return false;
});

/* Увеличенное изображение fancybox
--------------------------------------------------------------------------------------------------------------------------------- */
$("a.fancybox").fancybox({
	type: 'image',
	titlePosition: 'inside',
	hideOnContentClick: true,
	overlayShow: true,
	transitionIn: 'none',
	transitionOut:'none',
	centerOnScroll: true
});

/* Окно отправки письма
--------------------------------------------------------------------------------------------------------------------------------- */
$("a.sendmail").fancybox({
	type: 'iframe',
	width: 500,
	height: 510,
	overlayShow: false,
	transitionIn: 'none',
	transitionOut:'none',
	centerOnScroll: true
});

$("a.sendmail_author").fancybox({
	type: 'iframe',
	width: 500,
	height: 580,
	overlayShow: false,
	transitionIn: 'none',
	transitionOut:'none',
	centerOnScroll: true
});

/* Спецпроекты
--------------------------------------------------------------------------------------------------------------------------------- */
$('.special-projects li:gt(0) div').hide();
$('.special-projects').delegate('li:not(.current) h3', 'click', function() {
	$(this).parent().addClass('current').siblings().removeClass('current').children('div').slideUp();
	$(this).next().slideDown();
});

/* Увеличение/уменьшение шрифта - бесполезная хрень, имхо
--------------------------------------------------------------------------------------------------------------------------------- */
$(".font-size a.increase").click(function(){
	var articleBox = $(this).data('target');
	var currentFontSize = $(articleBox).css('font-size');
	var currentFontSizeNum = parseFloat(currentFontSize, 10);
	var newFontSize = currentFontSizeNum*1.1;
	$(articleBox).css('font-size', newFontSize);
	return false;
});
$(".font-size a.decrease").click(function(){
	var articleBox = $(this).data('target');
	var currentFontSize = $(articleBox).css('font-size');
	var currentFontSizeNum = parseFloat(currentFontSize, 10);
	var newFontSize = currentFontSizeNum*0.9;
	$(articleBox).css('font-size', newFontSize);
	return false;
});

/* Видео-проигрыватель - Flowplayer
--------------------------------------------------------------------------------------------------------------------------------- */

$("a.flowplayer").each(function(){
	var player = $(this);
	player.flowplayer({src: '/templates/player/flowplayer-3.2.7.swf', wmode: 'opaque'}, {
/*
		onPlaylistReplace: function(){
			this.startBuffering();
		},
*/
		clip: {
			autoPlay: false,
			autoBuffering: false
		},
		play: {
			replayLabel: null
		},
		onMouseOver: function() {
			this.getPlugin("content").fadeTo(0.9, 800);
		},
		onMouseOut: function() {
			this.getPlugin("content").fadeTo(0, 3000);
		},
		plugins: {
			controls: {
				url: "/templates/player/flowplayer.controls-3.2.5.swf",
				all: false,
				play: true,
				volume: true,
				scrubber: true
			},
			content: {
				url: "/templates/player/flowplayer.content-3.2.0.swf",
				top: 0,
				height: 40,
				width: '100%',
				border: 'none',
				borderRadius: 0,
				opacity: 0,
				style: { 'a': {textAlign: 'center', fontWeight: 'bold'} },
				html: '<a href="'+player.data('link')+'">'+player.data('name')+'</a>'
			}
		}
	});
});

$("a.video-link").click(function(){
	$f('last-video').stop();
	$f('last-video').setClip($(this).attr('href'));
	$f('last-video').getPlugin('content').setHtml( '<a href="'+$(this).data('link')+'">'+$(this).data('name')+'</a>' );
	return false;
});

/* Форма поиска в архиве
--------------------------------------------------------------------------------------------------------------------------------- */
$("#f_search_start_date").datepicker();
$("#f_search_end_date").datepicker();
$("form[name=search_articles] select[name=f_search_section] option[value=1]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=750]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=730]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=720]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=740]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=620]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=610]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=630]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=760]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=710]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=420]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=520]").remove();

$("#archive-content").delegate(".section-pagination a", "click", function(){
	if ($(this).attr("href")){
		$("#archive-content").block();
		$("#archive-content").load( $(this).attr("href")+"&ajax=true");
	}
	return false;
});

$(".search-pane").delegate("form[name=search_articles]", "submit", function(){
	$('#archive-content').block();
	var url = $(this).attr("action");
	var form = $(this).serialize()+"&ajax=true";
	$.get(url, form, function(data){
		$("#archive-content").html(data);
	});
	return false;
});


/* Выбор месяца показа в архиве
--------------------------------------------------------------------------------------------------------------------------------- */
$("#archive-content").delegate("form[name=select-date]", "submit", function(){
	$('#archive-content').block();
	var url = $(this).attr("action");
	var form = $(this).serialize()+"&ajax=true";
	$.get(url, form, function(data){
		$("#archive-content").html(data);
	});
	return false;
});


/* Фотокарточки одинаковой высоты в статье рубрики «Фотоальбом»
--------------------------------------------------------------------------------------------------------------------------------- */
$(window).load(function() {
  var currentTallest = 0,
  currentRowStart = 0,
  rowDivs = new Array(),
  $el,
  topPosition = 0;
  
  $('.article .photos li').each(function() {
  	$el = $(this);
  	topPosition = $el.position().top;
  	if (currentRowStart != topPosition) {
  		// we just came to a new row.  Set all the heights on the completed row
  		for (currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
  			rowDivs[currentDiv].height(currentTallest);
  		}
  		// set the variables for the new row
  		rowDivs.length = 0; // empty the array
  		currentRowStart = topPosition;
  		currentTallest = $el.height();
  		rowDivs.push($el);
  	} else {
  		// another div on the current row.  Add it to the list and check if it's taller
  		rowDivs.push($el);
  		currentTallest = Math.max(currentTallest, $el.height());
  	}
  	// do the last row
  	for (currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
  		rowDivs[currentDiv].height(currentTallest);
  	}
  });
});

}); /* Здесь закончился jQuery. Ниже этой строчки ничего не должно быть!
--------------------------------------------------------------------------------------------------------------------------------- */