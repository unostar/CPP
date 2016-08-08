//
// addLoadEvent()
// Adds event to window.onload without overwriting currently assigned onload functions.
// Function found at Simon Willison's weblog - http://simon.incutio.com/
//
function addLoadEvent(func)
{	
	var oldonload = window.onload;
	if (typeof window.onload != 'function'){
    	window.onload = func;
	} else {
		window.onload = function(){
		oldonload();
		func();
		}
	}
}


document.write('<script type="text/javascript" src="/templates/newspaper/javascript/contentslider.js"></script>');
document.write('<script type="text/javascript" src="/templates/newspaper/javascript/popup.js"></script>');


function init (obj){
  if (obj=='slides'){
    featuredcontentslider.init({
    	id: "slides",  //id of main slider DIV
    	contentsource: ["inline", ""],  //Valid values: ["inline", ""] or ["ajax", "path_to_file"]
    	toc: "markup", //Valid values: "#increment", "markup", ["label1", "label2", etc]
    	nextprev: ["prev", "next"],  //labels for "prev" and "next" links. Set to "" to hide.
    	revealtype: "click", //Behavior of pagination links to reveal the slides: "click" or "mouseover"
    	enablefade: [true, 0.2],  //[true/false, fadedegree]
    	autorotate: [true, 5000],  //[true/false, pausetime]
    	onChange: function(previndex, curindex){  //event handler fired whenever script changes slide
    		//previndex holds index of last slide viewed b4 current (1=1st slide, 2nd=2nd etc)
    		//curindex holds index of currently shown slide (1=1st slide, 2nd=2nd etc)
    	}
    })
  }
  if (obj=='major-news'){
    featuredcontentslider.init({
    	id: "major-news",  //id of main slider DIV
    	contentsource: ["inline", ""],  //Valid values: ["inline", ""] or ["ajax", "path_to_file"]
    	toc: "markup", //Valid values: "#increment", "markup", ["label1", "label2", etc]
    	nextprev: ["", ""],  //labels for "prev" and "next" links. Set to "" to hide.
    	revealtype: "mouseover", //Behavior of pagination links to reveal the slides: "click" or "mouseover"
    	enablefade: [true, 0.2],  //[true/false, fadedegree]
    	autorotate: [true, 5000]  //[true/false, pausetime]
    })
  }
}


var tags = new Array ( "p", "li", "div", "h1", "h2", "h3", "h4", "h5", "h6", "td" ); // html 'text' tags that should be parsed
var defFont = 13; // default font size
var iobj = 'article_full'; // Object (addressed by ID) on page that is addressed, otherwise whole page
var pobj = [['intro',13],['full-text',13]]; // array of predefined sizes for objects
var firstCall = true;
var rst = 0;

function FontSize(inc,fSize,obj) {

  if (firstCall) {
    firstCall = false;
    FontSize(0,defFont,obj);
  }

  if (inc) {rst = parseInt(rst+inc);}
  else if (rst) {inc=parseInt(-rst);rst=0;}

  obj = (iobj) ? iobj : obj;

  if (obj)
    obj = (document.getElementById) ? document.getElementById(obj) : document.all(obj)
  else
    obj = document;

  for (j=0; j<tags.length; j++) {

    var getElement = obj.getElementsByTagName(tags[j]);

      for (i=0; i<getElement.length; i++) {
        eachElement = getElement[i];
        if (fSize) {
          newFontSize = parseInt(fSize);
          switch(tags[j]) {
          case "h1": newFontSize += 5; break;
          case "h2": newFontSize += 3; break;
          case "h3": newFontSize += 2; break;
          case "h4": newFontSize += 1; break;
          case "h5": newFontSize += 1; break;
          case "h6": newFontSize += 1;
          }
          for (p=0;p<pobj.length;p++){
            if (eachElement.id == pobj[p][0]) newFontSize = parseInt(pobj[p][1]);
            else if (tags[j] == pobj[p][0]) newFontSize = parseInt(pobj[p][1]);
          }
        }
        else {
          currentFontSize = parseInt(eachElement.style.fontSize);
          fontIncrease = parseInt(inc);
          newFontSize = currentFontSize + fontIncrease;
        }
        if (tags[j] == "li") {eachElement.style.lineHeight = Math.round(newFontSize*1.2) + "px";}
        else {eachElement.style.lineHeight = Math.round(newFontSize*1.5) + "px";}
        eachElement.style.fontSize = newFontSize + "px";
      }
  }
}

function show_obj(obj){
  var pObj = (document.getElementById) ? document.getElementById(obj) : document.all(obj);
  pObj.style.visibility = (pObj.style.visibility == 'visible') ? 'hidden' : 'visible';
}

// -------------------------------------------------------------------------------------------------------------------------------------------------------
// jQuery Magic
// -------------------------------------------------------------------------------------------------------------------------------------------------------
// jquery.blockUI
(function(i){if(/1\.(0|1|2)\.(0|1|2)/.test(i.fn.jquery)||/^1.1/.test(i.fn.jquery)){alert("blockUI requires jQuery v1.2.3 or later!  You are using v"+i.fn.jquery);return}i.fn._fadeIn=i.fn.fadeIn;var c=function(){};var j=document.documentMode||0;var e=i.browser.msie&&((i.browser.version<8&&!j)||j<8);var f=i.browser.msie&&/MSIE 6.0/.test(navigator.userAgent)&&!j;i.blockUI=function(p){d(window,p)};i.unblockUI=function(p){h(window,p)};i.growlUI=function(t,r,s,p){var q=i('<div class="growlUI"></div>');if(t){q.append("<h1>"+t+"</h1>")}if(r){q.append("<h2>"+r+"</h2>")}if(s==undefined){s=3000}i.blockUI({message:q,fadeIn:700,fadeOut:1000,centerY:false,timeout:s,showOverlay:false,onUnblock:p,css:i.blockUI.defaults.growlCSS})};i.fn.block=function(p){return this.unblock({fadeOut:0}).each(function(){if(i.css(this,"position")=="static"){this.style.position="relative"}if(i.browser.msie){this.style.zoom=1}d(this,p)})};i.fn.unblock=function(p){return this.each(function(){h(this,p)})};i.blockUI.version=2.33;i.blockUI.defaults={message:"<h1>Please wait...</h1>",title:null,draggable:true,theme:false,css:{padding:0,margin:0,width:"30%",top:"40%",left:"35%",textAlign:"center",color:"#000",border:"3px solid #aaa",backgroundColor:"#fff",cursor:"wait"},themedCSS:{width:"30%",top:"40%",left:"35%"},overlayCSS:{backgroundColor:"#000",opacity:0.6,cursor:"wait"},growlCSS:{width:"350px",top:"10px",left:"",right:"10px",border:"none",padding:"5px",opacity:0.6,cursor:"default",color:"#fff",backgroundColor:"#000","-webkit-border-radius":"10px","-moz-border-radius":"10px","border-radius":"10px"},iframeSrc:/^https/i.test(window.location.href||"")?"javascript:false":"about:blank",forceIframe:false,baseZ:1000,centerX:true,centerY:true,allowBodyStretch:true,bindEvents:true,constrainTabKey:true,fadeIn:200,fadeOut:400,timeout:0,showOverlay:true,focusInput:true,applyPlatformOpacityRules:true,onBlock:null,onUnblock:null,quirksmodeOffsetHack:4};var b=null;var g=[];function d(r,F){var A=(r==window);var w=F&&F.message!==undefined?F.message:undefined;F=i.extend({},i.blockUI.defaults,F||{});F.overlayCSS=i.extend({},i.blockUI.defaults.overlayCSS,F.overlayCSS||{});var C=i.extend({},i.blockUI.defaults.css,F.css||{});var N=i.extend({},i.blockUI.defaults.themedCSS,F.themedCSS||{});w=w===undefined?F.message:w;if(A&&b){h(window,{fadeOut:0})}if(w&&typeof w!="string"&&(w.parentNode||w.jquery)){var I=w.jquery?w[0]:w;var P={};i(r).data("blockUI.history",P);P.el=I;P.parent=I.parentNode;P.display=I.style.display;P.position=I.style.position;if(P.parent){P.parent.removeChild(I)}}var B=F.baseZ;var M=(i.browser.msie||F.forceIframe)?i('<iframe class="blockUI" style="z-index:'+(B++)+';display:none;border:none;margin:0;padding:0;position:absolute;width:100%;height:100%;top:0;left:0" src="'+F.iframeSrc+'"></iframe>'):i('<div class="blockUI" style="display:none"></div>');var L=i('<div class="blockUI blockOverlay" style="z-index:'+(B++)+';display:none;border:none;margin:0;padding:0;width:100%;height:100%;top:0;left:0"></div>');var K,G;if(F.theme&&A){G='<div class="blockUI blockMsg blockPage ui-dialog ui-widget ui-corner-all" style="z-index:'+B+';display:none;position:fixed"><div class="ui-widget-header ui-dialog-titlebar blockTitle">'+(F.title||"&nbsp;")+'</div><div class="ui-widget-content ui-dialog-content"></div></div>'}else{if(F.theme){G='<div class="blockUI blockMsg blockElement ui-dialog ui-widget ui-corner-all" style="z-index:'+B+';display:none;position:absolute"><div class="ui-widget-header ui-dialog-titlebar blockTitle">'+(F.title||"&nbsp;")+'</div><div class="ui-widget-content ui-dialog-content"></div></div>'}else{if(A){G='<div class="blockUI blockMsg blockPage" style="z-index:'+B+';display:none;position:fixed"></div>'}else{G='<div class="blockUI blockMsg blockElement" style="z-index:'+B+';display:none;position:absolute"></div>'}}}K=i(G);if(w){if(F.theme){K.css(N);K.addClass("ui-widget-content")}else{K.css(C)}}if(!F.applyPlatformOpacityRules||!(i.browser.mozilla&&/Linux/.test(navigator.platform))){L.css(F.overlayCSS)}L.css("position",A?"fixed":"absolute");if(i.browser.msie||F.forceIframe){M.css("opacity",0)}var y=[M,L,K],O=A?i("body"):i(r);i.each(y,function(){this.appendTo(O)});if(F.theme&&F.draggable&&i.fn.draggable){K.draggable({handle:".ui-dialog-titlebar",cancel:"li"})}var v=e&&(!i.boxModel||i("object,embed",A?null:r).length>0);if(f||v){if(A&&F.allowBodyStretch&&i.boxModel){i("html,body").css("height","100%")}if((f||!i.boxModel)&&!A){var E=m(r,"borderTopWidth"),J=m(r,"borderLeftWidth");var x=E?"(0 - "+E+")":0;var D=J?"(0 - "+J+")":0}i.each([M,L,K],function(t,S){var z=S[0].style;z.position="absolute";if(t<2){A?z.setExpression("height","Math.max(document.body.scrollHeight, document.body.offsetHeight) - (jQuery.boxModel?0:"+F.quirksmodeOffsetHack+') + "px"'):z.setExpression("height",'this.parentNode.offsetHeight + "px"');A?z.setExpression("width",'jQuery.boxModel && document.documentElement.clientWidth || document.body.clientWidth + "px"'):z.setExpression("width",'this.parentNode.offsetWidth + "px"');if(D){z.setExpression("left",D)}if(x){z.setExpression("top",x)}}else{if(F.centerY){if(A){z.setExpression("top",'(document.documentElement.clientHeight || document.body.clientHeight) / 2 - (this.offsetHeight / 2) + (blah = document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop) + "px"')}z.marginTop=0}else{if(!F.centerY&&A){var Q=(F.css&&F.css.top)?parseInt(F.css.top):0;var R="((document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop) + "+Q+') + "px"';z.setExpression("top",R)}}}})}if(w){if(F.theme){K.find(".ui-widget-content").append(w)}else{K.append(w)}if(w.jquery||w.nodeType){i(w).show()}}if((i.browser.msie||F.forceIframe)&&F.showOverlay){M.show()}if(F.fadeIn){var H=F.onBlock?F.onBlock:c;var q=(F.showOverlay&&!w)?H:c;var p=w?H:c;if(F.showOverlay){L._fadeIn(F.fadeIn,q)}if(w){K._fadeIn(F.fadeIn,p)}}else{if(F.showOverlay){L.show()}if(w){K.show()}if(F.onBlock){F.onBlock()}}l(1,r,F);if(A){b=K[0];g=i(":input:enabled:visible",b);if(F.focusInput){setTimeout(o,20)}}else{a(K[0],F.centerX,F.centerY)}if(F.timeout){var u=setTimeout(function(){A?i.unblockUI(F):i(r).unblock(F)},F.timeout);i(r).data("blockUI.timeout",u)}}function h(s,t){var r=(s==window);var q=i(s);var u=q.data("blockUI.history");var v=q.data("blockUI.timeout");if(v){clearTimeout(v);q.removeData("blockUI.timeout")}t=i.extend({},i.blockUI.defaults,t||{});l(0,s,t);var p;if(r){p=i("body").children().filter(".blockUI").add("body > .blockUI")}else{p=i(".blockUI",s)}if(r){b=g=null}if(t.fadeOut){p.fadeOut(t.fadeOut);setTimeout(function(){k(p,u,t,s)},t.fadeOut)}else{k(p,u,t,s)}}function k(p,s,r,q){p.each(function(t,u){if(this.parentNode){this.parentNode.removeChild(this)}});if(s&&s.el){s.el.style.display=s.display;s.el.style.position=s.position;if(s.parent){s.parent.appendChild(s.el)}i(q).removeData("blockUI.history")}if(typeof r.onUnblock=="function"){r.onUnblock(q,r)}}function l(p,t,u){var s=t==window,r=i(t);if(!p&&(s&&!b||!s&&!r.data("blockUI.isBlocked"))){return}if(!s){r.data("blockUI.isBlocked",p)}if(!u.bindEvents||(p&&!u.showOverlay)){return}var q="mousedown mouseup keydown keypress";p?i(document).bind(q,u,n):i(document).unbind(q,n)}function n(s){if(s.keyCode&&s.keyCode==9){if(b&&s.data.constrainTabKey){var r=g;var q=!s.shiftKey&&s.target==r[r.length-1];var p=s.shiftKey&&s.target==r[0];if(q||p){setTimeout(function(){o(p)},10);return false}}}if(i(s.target).parents("div.blockMsg").length>0){return true}return i(s.target).parents().children().filter("div.blockUI").length==0}function o(p){if(!g){return}var q=g[p===true?g.length-1:0];if(q){q.focus()}}function a(w,q,A){var z=w.parentNode,v=w.style;var r=((z.offsetWidth-w.offsetWidth)/2)-m(z,"borderLeftWidth");var u=((z.offsetHeight-w.offsetHeight)/2)-m(z,"borderTopWidth");if(q){v.left=r>0?(r+"px"):"0"}if(A){v.top=u>0?(u+"px"):"0"}}function m(q,r){return parseInt(i.css(q,r))||0}})(jQuery);
// -------------------------------------------------------------------------------------------------------------------------------------------------------
$(document).ready(function(){

// BlockUI Defaults
$.blockUI.defaults.message='<img src="data:image/gif;base64,R0lGODlhEAAQAPQAAP///16Nufr7/IGlyLHH3GGPunWdw+Ts88fX5muWvqjB2Z661O3y9r3Q4trl7outzJSz0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh/hpDcmVhdGVkIHdpdGggYWpheGxvYWQuaW5mbwAh+QQJCgAAACwAAAAAEAAQAAAFUCAgjmRpnqUwFGwhKoRgqq2YFMaRGjWA8AbZiIBbjQQ8AmmFUJEQhQGJhaKOrCksgEla+KIkYvC6SJKQOISoNSYdeIk1ayA8ExTyeR3F749CACH5BAkKAAAALAAAAAAQABAAAAVoICCKR9KMaCoaxeCoqEAkRX3AwMHWxQIIjJSAZWgUEgzBwCBAEQpMwIDwY1FHgwJCtOW2UDWYIDyqNVVkUbYr6CK+o2eUMKgWrqKhj0FrEM8jQQALPFA3MAc8CQSAMA5ZBjgqDQmHIyEAIfkECQoAAAAsAAAAABAAEAAABWAgII4j85Ao2hRIKgrEUBQJLaSHMe8zgQo6Q8sxS7RIhILhBkgumCTZsXkACBC+0cwF2GoLLoFXREDcDlkAojBICRaFLDCOQtQKjmsQSubtDFU/NXcDBHwkaw1cKQ8MiyEAIfkECQoAAAAsAAAAABAAEAAABVIgII5kaZ6AIJQCMRTFQKiDQx4GrBfGa4uCnAEhQuRgPwCBtwK+kCNFgjh6QlFYgGO7baJ2CxIioSDpwqNggWCGDVVGphly3BkOpXDrKfNm/4AhACH5BAkKAAAALAAAAAAQABAAAAVgICCOZGmeqEAMRTEQwskYbV0Yx7kYSIzQhtgoBxCKBDQCIOcoLBimRiFhSABYU5gIgW01pLUBYkRItAYAqrlhYiwKjiWAcDMWY8QjsCf4DewiBzQ2N1AmKlgvgCiMjSQhACH5BAkKAAAALAAAAAAQABAAAAVfICCOZGmeqEgUxUAIpkA0AMKyxkEiSZEIsJqhYAg+boUFSTAkiBiNHks3sg1ILAfBiS10gyqCg0UaFBCkwy3RYKiIYMAC+RAxiQgYsJdAjw5DN2gILzEEZgVcKYuMJiEAOwAAAAAAAAAAAA==" width="16" height="16" alt="Загрузка..." />';
$.blockUI.defaults.css.border='none';
$.blockUI.defaults.css.color='#17417F';
$.blockUI.defaults.css.top='40%';
$.blockUI.defaults.css.left='40%';
$.blockUI.defaults.css.backgroundColor='transparent';
$.blockUI.defaults.overlayCSS.backgroundColor='#fff';
$.blockUI.defaults.overlayCSS.opacity=0.8;

// Comments form ajax implementation
$('#comments_form #article_comment_submit').live("click",function(){
  $('#comments_form').block();
  var url = $('#comments_form form[name=submit_comment]').attr("action");
  var form = $('#comments_form form[name=submit_comment]').serialize();
  $.post(url, form, function(data){
    $('#comments_form').html(data);
    $('#comments_form #captcha').attr("src", "/include/captcha/image.php?"+Math.floor(100*Math.random()));
  });
  return false;
});

$('#paginate-tabs-menu').delegate('li:not(.current)', 'click', function() {
  $(this).addClass('current').siblings().removeClass('current')
  .parents('#paginate-tabs').find('div.contentdiv').hide().eq($(this).index()).fadeIn(150);
});

}); // end of jQuery magic