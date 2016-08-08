{{ include file="slonim/_html-head.tpl" }}
<body>
<div id="wrapper">
{{* start header content *}}
  {{ include file="slonim/_header.tpl" }}
{{* end header content *}}
{{* start main content *}}
  <div id="main" class="clearfix">
    <script type="text/javascript" src="/templates/slonim/javascript/pwi/js/jquery-1.3.2.min.js"></script>
    <link   href="/templates/slonim/javascript/pwi/css/pwi.css" rel="stylesheet" type="text/css"/>
    <link   href="/templates/slonim/javascript/pwi/css/jquery.fancybox.css" rel="stylesheet" type="text/css"/>
    <script src="/templates/slonim/javascript/pwi/js/jquery.blockUI.js" type="text/javascript"></script>
    <script src="/templates/slonim/javascript/pwi/js/jquery.fancybox.js" type="text/javascript"></script>
    <script src="/templates/slonim/javascript/pwi/js/jquery.history.js" type="text/javascript"></script>
    <script src="/templates/slonim/javascript/pwi/js/jquery.pwi.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(document).ready(function() {
      $("#gallery").pwi({
        username: 'gazeta.slonimskaya',
        mode: 'albums',
        popupExt: function(photos){photos.fancybox();}
      });
    });
    </script>
    <div id="gallery"></div>
  </div>
{{* end main content *}}
{{* start footer content *}}
  {{ include file="slonim/_footer.tpl" }}
{{* end footer content *}}
</div>
{{* end main content *}}
</body>
</html>
