<META name="y_key" content="d6713b5a37dc9d45">
<link href="/templates/radio/styles/reset.css" rel="stylesheet" type="text/css" />
<link href="/templates/radio/styles/radio.css" rel="stylesheet" type="text/css" />
<link href="/templates/radio/styles/m-section.css" rel="stylesheet" type="text/css" />
<link href="/templates/radio/styles/m-article.css" rel="stylesheet" type="text/css" />
<link href="/templates/radio/styles/m-archive.css" rel="stylesheet" type="text/css" />
<link href="/templates/radio/styles/boban-front.css" rel="stylesheet" type="text/css" />
<link href="/templates/radio/styles/main_menu.css" rel="stylesheet" type="text/css" />
<link href="/templates/radio/styles/scrollable.css" rel="stylesheet" type="text/css" />
<link href="/templates/radio/javascript/calendar/fonts-min.css" rel="stylesheet" type="text/css" />
<link href="/templates/radio/javascript/calendar/calendar.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/templates/radio/javascript/jquery.min.js"></script>
<script type="text/javascript" src="/templates/radio/javascript/jquery.scrollable-1.0.2.min.js"></script>
<script type="text/javascript" src="/templates/radio/javascript/animatedcollapse.js"></script>
<script type="text/JavaScript" src="/templates/radio/javascript/popup.js"></script>
<script type="text/JavaScript" src="/templates/radio/javascript/main-menu.js"></script>
<script type="text/javascript" src="/templates/newspaper/javascript/mp/swfobject.js"></script>
<script type="text/javascript" src="/templates/radio/javascript/calendar/yahoo-dom-event.js"></script>
<script type="text/javascript" src="/templates/radio/javascript/calendar/calendar-min.js"></script>
<script type="text/javascript" src="/templates/radio/javascript/fn.js"></script>

{{* nifty corners IE fix attempt *}}
<!--[if IE]>
<script type="text/javascript" src="/templates/radio/javascript/niftycube.js"></script>
<script type="text/javascript">
window.onload=function(){
Nifty("div#footer","bottom big fixed-height");
Nifty("div#header","top big");
Nifty("div#slider","normal fixed-height");
}
</script>
<![endif]-->
{{* // *}}
{{php}}
if ((stristr(getenv('HTTP_USER_AGENT') , 'opera')))
{
echo "<script type=\"text/javascript\" src=\"/templates/radio/javascript/niftycube.js\"></script>
<script type=\"text/javascript\">
window.onload=function(){
Nifty(\"div#footer\",\"bottom big fixed-height\");
Nifty(\"div#header\",\"top big\");
Nifty(\"div#slider\",\"normal fixed-height\");
}
</script>";
} 
{{/php}}