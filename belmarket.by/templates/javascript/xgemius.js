function gemius_parameters() {
	var d=document;
	var href=new String(d.location.href);
	var ref;
	var f=0;
	var fv='-';
	if (d.referrer) { ref = new String(d.referrer); } else { ref = ""; }
	if(typeof(Error)!='undefined') {
		eval("try { f=(d==top.document)?1:2; if (typeof(top.document.referrer)=='string') { ref = top.document.referrer } } catch(gemius_ex) {f=3;}");
		eval('try { fv = navigator.plugins["Shockwave Flash"].description; } catch (e) {}');
		eval('try { fv = (new ActiveXObject("ShockwaveFlash.ShockwaveFlash")).GetVariable("$version"); } catch (e) {}');
	}
	var url='&fr='+f+'&fv='+escape(fv)+'&tz='+(new Date()).getTimezoneOffset()+'&href='+escape(href.substring(0,499))+'&ref='+escape(ref.substring(0,499));
	if (screen) {
		var s=screen;
		if (s.width) url+='&screen='+s.width+'x'+s.height;
		if (s.colorDepth) url+='&col='+s.colorDepth;
	}
	return url;
}

function gemius_add_onload_event(obj,fn) {
	if (obj.attachEvent) { 
		obj.attachEvent("onload", fn);
	} else if(obj.addEventListener) {
		obj.addEventListener("load", fn, false);
	}

}

function gemius_append_script(xp_url) {
	if(typeof Error !='undefined') {
		eval("try { xp_javascript = document.createElement('script'); xp_javascript.src = xp_url; xp_javascript.type = 'text/javascript'; xp_javascript.defer = true; document.body.appendChild(xp_javascript); } catch(exception) { }");
	}
}

function gemius_obj_loaded() {
	window.pp_gemius_loaded+=1;
	if (window.pp_gemius_loaded==2 && window.pp_gemius_image.width && window.pp_gemius_image.width>1) {
		gemius_append_script(window.pp_gemius_script);
	}
}

if (typeof pp_gemius_identifier == 'undefined') {
	if (typeof gemius_identifier != 'undefined') {
		pp_gemius_identifier = gemius_identifier;
		gemius_identifier = 'USED_'+gemius_identifier;
	} else {
		pp_gemius_identifier = "";
	}
}

var pp_gemius_proto = (document.location && document.location.protocol && document.location.protocol=='https:')?'https://':'http://';
if (typeof pp_gemius_hitcollector == 'undefined') {
	if (typeof gemius_hitcollector != 'undefined') {
		pp_gemius_hitcollector = gemius_hitcollector;
	} else {
		pp_gemius_hitcollector = 'gaby.hit.gemius.pl';
	}
}
var pp_gemius_host = pp_gemius_proto+pp_gemius_hitcollector+'/_';

if (typeof window.pp_gemius_cnt != 'undefined') {
	if (typeof window.pp_gemius_images == 'undefined') {
	        window.pp_gemius_images = new Array();
	}
	var gemius_l = window.pp_gemius_images.length;
	window.pp_gemius_images[gemius_l]=new Image();
	window.pp_gemius_images[gemius_l].src = pp_gemius_host+(new Date()).getTime()+'/redot.gif?l=33&id=ERR_'+pp_gemius_identifier.replace(/id=/,"id=ERR_")+gemius_parameters();
} else {
	if (typeof pp_gemius_mode == 'undefined') {
		window.pp_gemius_loaded = 0;
		window.pp_gemius_script = pp_gemius_host+(new Date()).getTime()+'/pp.js?id='+pp_gemius_identifier;
		gemius_add_onload_event(window,gemius_obj_loaded);
		window.pp_gemius_image = new Image();
		gemius_add_onload_event(window.pp_gemius_image,gemius_obj_loaded);
		window.pp_gemius_image.src = pp_gemius_host+(new Date()).getTime()+'/rexdot.gif?l=30&id='+pp_gemius_identifier+gemius_parameters();
		window.pp_gemius_cnt = 1;
	} else {
		window.pp_gemius_image = new Image();
		window.pp_gemius_image.src = pp_gemius_host+(new Date()).getTime()+'/rexdot.gif?l=31&id='+pp_gemius_identifier+gemius_parameters();
		window.pp_gemius_cnt = 1;
	}
}
pp_gemius_identifier = 'USED_'+pp_gemius_identifier;

function pp_gemius_hit_int(list,rfrom,rto) {
	var gu = pp_gemius_host+(new Date()).getTime()+'/redot.gif?l=32';
	if (typeof window.gemius_cnt == 'undefined') {
		window.gemius_cnt=0;
	}
	if (typeof gemius_hit_cnt == 'undefined') {
		gemius_hit_cnt=0;
	}
	if (window.gemius_cnt<=gemius_hit_cnt) {
		go=1;
		window.gemius_cnt++;
	} else {
		go=0;
	}
	gemius_hit_cnt++;
	for (var i=rfrom ; i<rto ; i++) {
		gu += '&id='+list[i];
	}
	gu += gemius_parameters();
	if (typeof window.gemius_hit_images == 'undefined') {
		window.gemius_hit_images = new Array();
	}
	var gl = window.gemius_hit_images.length;
	window.gemius_hit_images[gl]=new Image();
	if (go) {
		window.gemius_hit_images[gl].src = gu;
	} else {
		window.gemius_hit_images[gl].src = gu.replace(/id=/,"id=DBL_");
	}
}

function pp_gemius_hit() {
	for (i=0 ; i<arguments.length ; i+=5) {
		if (i+5<arguments.length) {
			pp_gemius_hit_int(arguments,i,i+5);
		} else {
			pp_gemius_hit_int(arguments,i,arguments.length);
		}
	}
}

if (typeof gemius_hit != 'function') {
	gemius_hit=pp_gemius_hit;
}
