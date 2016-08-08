// rafael.adm.br/css_browser_selector
function css_browser_selector(u){var ua = u.toLowerCase(),is=function(t){return ua.indexOf(t)>-1;},g='gecko',w='webkit',s='safari',h=document.getElementsByTagName('html')[0],b=[(!(/opera|webtv/i.test(ua))&&/msie\s(\d)/.test(ua))?('ie ie'+RegExp.$1):is('firefox/2')?g+' ff2':is('firefox/3')?g+' ff3':is('gecko/')?g:/opera(\s|\/)(\d+)/.test(ua)?'opera opera'+RegExp.$2:is('konqueror')?'konqueror':is('chrome')?w+' chrome':is('applewebkit/')?w+' '+s+(/version\/(\d+)/.test(ua)?' '+s+RegExp.$1:''):is('mozilla/')?g:'',is('j2me')?'mobile':is('iphone')?'iphone':is('ipod')?'ipod':is('mac')?'mac':is('darwin')?'mac':is('webtv')?'webtv':is('win')?'win':is('freebsd')?'freebsd':(is('x11')||is('linux'))?'linux':'','js']; c = b.join(' '); h.className += ' '+c; return c;}; css_browser_selector(navigator.userAgent);
// danalan.info
function FontSize(inc) {
var divs = [['intro',1.3],['full_text',1.1]]; // setup id' & font-size's
for (var i in divs) {
obj = document.getElementById(divs[i][0]).style.fontSize;
obj = (parseFloat(obj)) ? parseFloat(obj) : divs[i][1] ;
document.getElementById(divs[i][0]).style.fontSize = obj + inc + "em"; // check font attribute ("em","px","pt","%")
}}

function init_slides (obj){
  if (obj=='archive_slides'){
	featuredcontentslider.init({
		id: "archive_slides",  //id of main slider DIV
		contentsource: ["inline", ""],  //Valid values: ["inline", ""] or ["ajax", "path_to_file"]
		toc: "markup", //Valid values: "#increment", "markup", ["label1", "label2", etc]
		nextprev: ["prev_iss", "next_iss"],  //labels for "prev" and "next" links. Set to "" to hide.
		revealtype: "click", //Behavior of pagination links to reveal the slides: "click" or "mouseover"
		enablefade: [true, 0.2],  //[true/false, fadedegree]
		autorotate: [true, 5000],  //[true/false, pausetime]
		onChange: function(previndex, curindex){  //event handler fired whenever script changes slide
			//previndex holds index of last slide viewed b4 current (1=1st slide, 2nd=2nd etc)
			//curindex holds index of currently shown slide (1=1st slide, 2nd=2nd etc)
		}
	})
  }
}

$(document).ready(function(){

	$("a.cover-image").fancybox({
		'type' : 'image',
		'hideOnContentClick' : true,
		'showNavArrows' : false,
		'autoScale'  :   false
	});
	$("a.main-image").fancybox({
		'type' : 'image',
		'hideOnContentClick' : true,
		'showNavArrows' : false,
		'autoScale'  :   false
	});
	$("#column-1 .cs_img img").click(function() {
		var imgsrc = 'http://borisovnews.by' + $(this).attr("src");
		$.fancybox({
			'type' : 'image',
			'hideOnContentClick' : true,
			'showNavArrows' : true,
			'autoScale'  :   false,
			'href'	: imgsrc
			});

		return false;
	});
	
	$(".gallery").slides({
		container: 'slides',
		generatePagination: false,
		play: 10000
	});

});