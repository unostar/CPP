<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" media="screen, projection, print" href="/templates/styles/screen.css" />

{{ include file="_html_head.tpl" }}

<script type="text/javascript" src="/templates/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="/templates/js/jquery-ui-1.7.1.custom.min.js"></script>
<script type="text/javascript">
$(function(){
// Tabs
$('#most').tabs();
//hover states on the static widgets
$('#dialog_link, ul#icons li').hover(
function() { $(this).addClass('ui-state-hover'); }, 
function() { $(this).removeClass('ui-state-hover'); }
);
});
</script>

<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="generator" content="Campsite" />

<link   href="/templates/pwi/css/pwi.css" rel="stylesheet" type="text/css"/>
<link   href="/templates/pwi/css/jquery.slimbox2.css" rel="stylesheet" type="text/css"/>
    
<script src="/templates/pwi/js/jquery.blockUI.js" type="text/javascript"></script>
<script src="/templates/pwi/js/jquery.slimbox2.js" type="text/javascript"></script>
<script src="/templates/pwi/js/jquery.history.js" type="text/javascript"></script>
<script src="/templates/pwi/js/jquery.pwi.js" type="text/javascript"></script>


<script type="text/javascript">
    $(document).ready(function() {
        $("#container").pwi({
            username: 'regionnewsby',
            mode: 'albums',
            albums: ["STApbF","hWksxE","jvyrcI","poRHEF","oVPOS","AoPZHL","vXAolH"],
            thumbSize: 160,
            maxResults: 50,
            albumCrop: 1,
            thumbCrop: 1,
            labels: {
              photo:"фото",
              photos: "фото",
              albums: "Вернуться к альбомам",
              slideshow: "Показать слайдшоу",
              loading: "Загружаю...",
              page: "Страница",
              prev: "Предыдущая",
              next: "Следующая",
              devider: "|"
            },
            months: ["января","февраля","марта","апреля","мая","июня","июля","августа","сентября","октября","ноября","декабря"],
            showAlbumDate: true,
            showPhotoDate: true,
            blockUIConfig: {
              message: "<div class='lbLoading pwi_loader'>загружаю...<div>",
              css: "pwi_loader"
            }
        });

    });
</script>

<title>"Рэгіянальная газета". Навіны рэгіёна: Маладзечна, Вілейка, Смаргонь, Ашмяны, Валожын, Мядзел, Астравец</title>

</head>

<body  id="home">

<div id="wrap">

{{ include file="header.tpl" }}

{{ include file="main-nav.tpl" }}

<div class="type-o-cont">Галерея</div>

<div id="container"></div>

</div><!-- /#wrap -->

{{ include file="footer.tpl" }}

</body>
</html>