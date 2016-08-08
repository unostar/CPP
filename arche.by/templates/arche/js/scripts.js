$(document).ready(function(){

// Section Navigation
$("#section-content .pagination a.page").live("click",function(){
  $("#section-content").block();
  $("#section-content").load( $(this).attr("href")+"&ajax=true");
  return false;
});

// табы
$('.tabs-labels').delegate('li:not(.active)', 'click', function() {
	$(this).addClass('active').siblings().removeClass('active')
	.parents('.tabs').find('.tab').hide().eq($(this).index()).fadeIn(150);
	return false;
});

$('.archive-page-years').delegate('li:not(.current, .linked)', 'click', function() {
	$(this).addClass('current').siblings().removeClass('current')
	.parents('.archive-page').find('.archive-page-list').hide().eq($(this).index()).fadeIn(150);
	return false;
});

// табы с подпиской и отправкой почты
$('.send_letter form button[type=submit]').live("click",function(){
  $(".send_letter").block();
  var url = '?tpl=arche/tpl/sendmail.tpl';
  var form = $('.send_letter form').serialize();
  $.post(url, form, function(data){$('.send_letter').replaceWith(data);});
  return false;
});
  
// блоги в сайдбаре
  $('.blogs-directions').delegate('li:not(.active)', 'click', function() {
  	$(this).addClass('active').siblings().removeClass('active')
  	.parents('.blogs').find('.posts-list').hide().eq($(this).index()).fadeIn(150);
  	return false;
  });
  
// главные новости на главной странице
  $('.main-news .articles-list li').featureList({
  	output: ".main-news .article"
  });
  
  
// проркутка книг в хедере
  $('.books').slides({
  	container: "books-list",
  	pagination: true,
  	generatePagination: false,
  	hoverPause: true,
  	play: 5000
  });
  
// увеличенное изображение
  $("a.cover").fancybox({
    type: 'image',
    titlePosition: 'inside',
    hideOnContentClick: true,
    overlayShow: false,
    transitionIn: 'none',
    transitionOut:'none',
    centerOnScroll: true
  });
  
// прокрутка фото/видео
  $('.galleries .tab').slides({
  	container: "gallery-list",
  	pagination: false,
  	generatePagination: false
  });
  
// разворачивание списка по месяцам на странице архива
  $('.archive-page .months .month').click(function() {
  	$(this).next().toggleClass("expanded");
  	$(this).toggleClass("expanded");
$(this).next().children(".month-sections").block();
$(this).next().children(".month-sections").load( "/?tpl=arche/tpl/archive-fetch.tpl&date=" + $(this).data('date') );
  	return false;
  });

// окно отправки письма
  $("a.sendmail").fancybox({
    type: 'iframe',
    width: 500,
    height: 510,
    overlayShow: false,
    transitionIn: 'none',
    transitionOut:'none',
    centerOnScroll: true
  });

  $("a.sendmail_subscribe").fancybox({
    type: 'iframe',
    width: 240,
    height: 100,
    overlayShow: false,
    transitionIn: 'none',
    transitionOut:'none',
    centerOnScroll: true
  });


// опции ReCaptcha
var RecaptchaOptions = {
  custom_translations : {
    instructions_visual : "Увядзіце два словы:",
    instructions_audio : "Увядзіце восем лікаў:",
    play_again : "Прайграць зноўку",
    cant_hear_this : "Запампаваць у фармаце MP3",
    visual_challenge : "Загрузіць візуальную задачу",
    audio_challenge : "Загрузіць гукавую задачу",
    refresh_btn : "Загрузіць новую задачу",
    help_btn : "Дапамога",
    incorrect_try_again : "Няверна. Паўтарыце."
  },
  lang: 'ru',
  theme: 'white'
};

// Archive Navigation
$("#archive-content .pagination a.page").live("click",function(){
  $("#archive-content").block();
  $("#archive-content").load( $(this).attr("href")+"&ajax=true" );
  return false;
});

// Archive Search Form
$("form[name=search_articles] select[name=f_search_issue] option[value=1]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=200]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=110]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=270]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=210]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=290]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=240]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=220]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=260]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=300]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=250]").remove();
$("form[name=search_articles] select[name=f_search_section] option[value=230]").remove();

$('form[name=search_articles]').submit(function(){
  $("#archive-content").block();
  var url = $('form[name=search_articles]').attr("action") + '?ajax=true';
  var form = $('form[name=search_articles]').serialize();
  $.post(url, form, function(data){$('#archive-content').html(data);});
  return false;
});



});