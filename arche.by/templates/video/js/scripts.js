$(document).ready(function(){

// табы
$('.tabs-labels').delegate('li:not(.active)', 'click', function() {
	$(this).addClass('active').siblings().removeClass('active')
	.parents('.tabs').find('.tab').hide().eq($(this).index()).fadeIn(500);
	return false;
});

// книги в сайдбаре
$('.books-directions').delegate('li:not(.active)', 'click', function() {
	$(this).addClass('active').siblings().removeClass('active')
	.parents('.books').find('.shelf').hide().eq($(this).index()).fadeIn(500);
	return false;
});

// прокрутка популярного видео
$('.popular .tab').slides({
	container: "gallery-list",
	pagination: false,
	generatePagination: false
});

// разворачивание списка по месяцам на странице архива
$('.archive-page .months .month').click(function() {
	$(this).next().toggleClass("expanded");
	$(this).toggleClass("expanded");
	return false;
});

// Video Tooltip
$(".videos .content").tooltip({
  effect: 'slide',
  offset: [30,0]
});

// табы с подпиской и отправкой почты
$('.send_letter form button[type=submit]').live("click",function(){
  $(".send_letter").block();
  var url = '?tpl=video/tpl/sendmail.tpl';
  var form = $('.send_letter form').serialize();
  $.post(url, form, function(data){$('.send_letter').replaceWith(data);});
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

// видеоплеер на странице статьи

$("a#article-video").each(function(){
	var player = $(this);
	player.flowplayer({src: '/templates/video/player/flowplayer-3.2.11.swf', wmode: 'opaque'}, {
  	clip: {
  		autoPlay: false,
  		autoBuffering: true,
      provider: 'lighttpd'
  	},
  	play: {
  		replayLabel: null
  	},
  	plugins: {
  		controls: {
  			url: "/templates/video/player/flowplayer.controls-3.2.11.swf",
        play: true,
        volume: true,
        mute: true,
        time: true,
        stop: true,
        playlist: false,
        fullscreen: true,
        scrubber: true
  		},
      lighttpd: {
        url: "/templates/video/player/flowplayer.pseudostreaming-3.2.9.swf"
      }
  	}
  });
});


});