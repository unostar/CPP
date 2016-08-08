<link rel="shortcut icon" href="/templates/img/favicon.ico" type="image/x-icon" />
<link rel="alternate" type="application/rss+xml" title="{{$gimme->publication->name}} - Усе навіны" href="http://{{$gimme->publication->site}}/feed/index.rss" />
<link rel="alternate" type="application/rss+xml" title="{{$gimme->publication->name}} - Абранае" href="http://{{$gimme->publication->site}}/feed/special.rss" />
{{list_sections constraints="number smaller 100"}}
<link rel="alternate" type="application/rss+xml" title="{{$gimme->publication->name}} - {{$gimme->section->name}}" href="http://{{$gimme->publication->site}}/feed/{{$gimme->section->url_name}}.rss" />
{{/list_sections}}
<link href="/templates/css/screen.css" rel="stylesheet" type="text/css" />
<link href="/templates/js/slimbox/slimbox2.css" rel="stylesheet" type="text/css" />
<link href="/templates/js/datepicker/jquery-ui-1.7.2.custom.css" rel="stylesheet" type="text/css"  />
<script type="text/javascript" src="/templates/js/jquery.min.js"></script>
<script type="text/javascript" src="/templates/js/jquery.popup.min.js"></script>
<script type="text/javascript" src="/templates/js/jquery.cycle.all.min.js"></script>
<script type="text/javascript" src="/templates/js/slimbox/slimbox2.js"></script>
<script type="text/javascript" src="/templates/js/datepicker/jquery.datepicker.min.js"></script>
<script type="text/javascript" src="/templates/js/datepicker/ui.datepicker-by.js"></script>
<script type="text/javascript" src="/templates/js/jquery.tools.min.js"></script>
<script type="text/javascript" src="/templates/js/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
<script type="text/javascript" src="/templates/js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="/templates/js/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
<script type="text/javascript" src="/templates/js/fn.js"></script>
