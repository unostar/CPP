// rafael.adm.br/css_browser_selector
function css_browser_selector(u){var ua = u.toLowerCase(),is=function(t){return ua.indexOf(t)>-1;},g='gecko',w='webkit',s='safari',h=document.getElementsByTagName('html')[0],b=[(!(/opera|webtv/i.test(ua))&&/msie\s(\d)/.test(ua))?('ie ie'+RegExp.$1):is('firefox/2')?g+' ff2':is('firefox/3.5')?g+' ff3 ff3_5':is('firefox/3')?g+' ff3':is('gecko/')?g:/opera(\s|\/)(\d+)/.test(ua)?'opera opera'+RegExp.$2:is('konqueror')?'konqueror':is('chrome')?w+' chrome':is('iron')?w+' iron':is('applewebkit/')?w+' '+s+(/version\/(\d+)/.test(ua)?' '+s+RegExp.$1:''):is('mozilla/')?g:'',is('j2me')?'mobile':is('iphone')?'iphone':is('ipod')?'ipod':is('mac')?'mac':is('darwin')?'mac':is('webtv')?'webtv':is('win')?'win':is('freebsd')?'freebsd':(is('x11')||is('linux'))?'linux':'','js']; c = b.join(' '); h.className += ' '+c; return c;}; css_browser_selector(navigator.userAgent);

// danalan.info
function FontSize(inc) {                      // inc = increment +/-1
var divs = [['intro',1.25],['full_text',1.083]]; // setup id's & font-size's
for (var i in divs) {
obj = document.getElementById(divs[i][0]).style.fontSize;
obj = (parseFloat(obj)) ? parseFloat(obj) : divs[i][1] ;
document.getElementById(divs[i][0]).style.fontSize = obj + inc + "em"; // check font attribute ("em","px","pt","%")
}}

$(document).ready(function(){

$('#this_day').cycle({fx:'none',height:73,timeout:8000,pause:1,cleartypeNoBg:true,random:1});

$("#IssueCalendar").datepicker({
  beforeShowDay: function(d){
    var dat = $.datepicker.formatDate("dd.mm.yy", d);
    for (var i=0, c=dates.length; i<c; i++) if (dat == dates[i][1]) return [true,'highlight',dates[i][2]];
    return [false,'']
  ;},
  onSelect: function(d){jQuery.each(dates,function(){if(this[1]==d) open(link+this[0]+'?tpl=276','_self');});}
});

$("#photofact .scrollable").scrollable({clickable:false,size:3}).circular().mousewheel(100);

$(".popup").popup({
  width: 370,
  height: 410,
  titlebar: true,
  status: false,
  resizable: false,
  toolbar: false,
  scrollbars: false,
  menubar: false
});

$('li.accordion a.open').click(function() {
	$(this).next().toggle();
	return false;
});

$('#submit_poll').click(function(){
  $.post($('form[name=poll]').attr("action"),$('form[name=poll]').serialize(),function(data){$('#poll').html(data);});
  return false;
});

$("a.example4").fancybox({
				'opacity'		: true,
				'overlayShow'	: false,
				'transitionIn'	: 'elastic',
				'transitionOut'	: 'none'
});

// Табы без запоминания активной вкладки между страницами
// $('ul.tabs-captions').delegate('li:not(.current)', 'click', function() {
//   $(this).addClass('current').siblings().removeClass('current')
//     .parents('div.tabs').find('ul.tabs-lists').hide().eq($(this).index()).fadeIn(150);
// });

// Табы с запоминанием активной вкладки между страницами
  function createCookie(name,value,days) {
    if (days) {
      var date = new Date();
      date.setTime(date.getTime()+(days*24*60*60*1000));
      var expires = "; expires="+date.toGMTString();
    }
    else var expires = "";
    document.cookie = name+"="+value+expires+"; path=/";
  }
  function readCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
      var c = ca[i];
      while (c.charAt(0)==' ') c = c.substring(1,c.length);
      if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
    }
    return null;
  }
  function eraseCookie(name) {
    createCookie(name,"",-1);
  }

  $('ul.tabs-captions').each(function(i) {
    var cookie = readCookie('tabCookie'+i);
    if (cookie) $(this).find('li').eq(cookie).addClass('current').siblings().removeClass('current')
      .parents('div.tabs').find('ul.tabs-lists').hide().eq(cookie).show();
  });

  $('ul.tabs-captions').delegate('li:not(.current)', 'click', function() {
    $(this).addClass('current').siblings().removeClass('current')
      .parents('div.tabs').find('ul.tabs-lists').hide().eq($(this).index()).show();
    var ulIndex = $('ul.tabs-captions').index($(this).parents('ul.tabs-captions'));
    eraseCookie('tabCookie'+ulIndex);
    createCookie('tabCookie'+ulIndex, $(this).index(), 365);
  });



}); //end of jquery magic
