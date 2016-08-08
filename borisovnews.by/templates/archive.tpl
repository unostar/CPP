<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Наша жизнь - Борисовские Новости архив статей </title>
{{ include file="_html_head.tpl" }}
<script type="text/javascript" src="/templates/javascript/jquery.scrollable-1.0.2.min.js"></script>
<script type="text/javascript" src="/templates/javascript/contentslider.js"></script>
<link rel="stylesheet" type="text/css" href="/templates/javascript/calendar/fonts-min.css" />
<link rel="stylesheet" type="text/css" href="/templates/javascript/calendar/calendar.css" />
<script type="text/javascript" src="/templates/javascript/calendar/yahoo-dom-event.js"></script>
<script type="text/javascript" src="/templates/javascript/calendar/calendar-min.js"></script>
<style>
.home-program-slider {
  width:910px;
  height:460px;
  display:block;
  position:relative;
  float:left;
  margin:27px 20px 22px 20px;
  padding:12px 0;
  text-align:left;
  background: #fff;
  font:0;

}


/* 
  root element for the scrollable. 
  when scrolling occurs this element stays still. 
*/
.home-program-slider .scrollable {
  
  /* required settings */
  position:relative;
  overflow:hidden;    
  width: 850px; 
  height: 450px;  

}

/* 
  root element for scrollable items. Must be absolutely positioned
  and it should have a super large width to accomodate scrollable items.
  its enough that you set width and height for the root element and not for this element.
*/
.home-program-slider .scrollable div.items {  
  /* this cannot be too large */
  width:20000em;  
  position:absolute;
  clear:both;   
}

/* single scrollable item */
.home-program-slider .scrollable div.items div {
  float:left;
  
  /* custom decoration */
  width:274px;
  height:450px;
  padding:0px;
  font-size:0;
  background-color:#069;
  margin-right: 23px;
}

.home-program-slider .scrollable div.items img {border:2px solid #eee;width:270px;height:400px;}
.home-program-slider .scrollable div.items a {display:inline-block;position:relative;width:156px;height:22px;line-height:22px;margin:0;padding-left:4px;background:url(/templates/radio/images/program-slider-download.gif);font-size:12px;font-weight:normal;color:#9ab2be;}

.home-program-slider .scrollable div.items .jason {
  position:relative;
  top:-134px;
  left:0;
  width:155px;
  height:140px;
  padding:16px 1px 0 4px;
  background:#1c242b;
  display:none;
  font-family:Arial, Helvetica, sans-serif;
  font-size:12px;
  line-height:16px;
  font-weight:bold;
  color:#fff;
  overflow:hidden;
  margin-bottom:-156px;
}
.home-program-slider .scrollable div.items a.button {
  display:block;
  position:relative;
  top:-134px;
  left:106px;
  width:54px;
  height:16px;
  padding:0;margin:0;
  background:url(/templates/images/program-slider-hover-button.gif);
  margin-bottom:-16px;
  z-index:11;
}


/* active item */
.home-program-slider .scrollable div.items div.active {
  background-color:#9AB2BE;
}
.home-program-slider .scrollable div.items a.archive-issue-link:link,.home-program-slider .scrollable div.items a.archive-issue-link:visited{
color:#fff;
text-decoration:none;
font-size:14px;
font-weight:bold;
margin:0 0 0 8px;
padding:10px 0 0 0;
float:left;
clear:left;
width:auto;
height:auto;
line-height:normal;
position:absolute;
top:405px;
}
.home-program-slider .scrollable div.items a.archive-issue-link:hover{
text-decoration:underline;
}

/* this makes it possible to add next button beside scrollable */
.home-program-slider .scrollable {
  float:left;   
}

/* prev, next, prevPage and nextPage buttons */
.home-program-slider a.prev, .home-program-slider a.next, .home-program-slider a.prevPage, .home-program-slider a.nextPage {
  display:block;
  width:16px;
  height:16px;
  background:url(/templates/images/home-program-slider-left.gif) no-repeat;
  float:left;
  margin:110px 5px 217px 4px;
  cursor:pointer;
}

/* mouseover state */
.home-program-slider a.prev:hover, .home-program-slider a.next:hover, .home-program-slider a.prevPage:hover, .home-program-slider a.nextPage:hover {
  background-position:0px 1px;    
}

/* disabled navigational button */
.home-program-slider a.disabled {
  visibility:hidden !important;   
}

/* next button uses another background image */
.home-program-slider a.next, .home-program-slider a.nextPage {
  background-image:url(/templates/images/home-program-slider-right.gif);
  clear:right;  
}



/*********** navigator ***********/

/* position and dimensions of the navigator */
.home-program-slider div.navi {
  font-family:Arial, Helvetica, sans-serif;
  font-size:16px;
  font-weight:bold;
  color:#363636;
  margin-left:30px;
  width:200px;
  height:20px;
}


/* items inside navigator */
.home-program-slider div.navi a {
  width:8px;
  height:8px;
  float:left;
  margin:3px;
  background:url(/templates/radio/images/home-program-slider-navigator.gif) 0 0 no-repeat;     
  cursor:pointer; 
}

/* mouseover state */
.home-program-slider div.navi a:hover {
  background-position:0 -8px;      
}

/* active state (current page state) */
.home-program-slider div.navi a.active {
  background-position:0 -16px;     
}   


</style>
</head>
<body>
<div id="wrapper" class="clearfix">
{{ include file="_header.tpl" }}
  <div id="main" class="clearfix">
    {{ include file="archive-cont.tpl" }}
  </div>
{{ include file="_footer.tpl" }}
</div>
</body>
</html>
