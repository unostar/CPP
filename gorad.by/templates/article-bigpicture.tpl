{{include file="_html-head.tpl"}}
<body class="bigpicture">
<!-- Оболочки фона и всего содержимого -->
<div class="l-container">
<!-- Шапка -->
{{include file="_header.tpl"}}
<!-- //шапка -->
<!-- Оболочка основного содержимого -->
<div class="l-wrapper">
<!-- Основное содержимое -->
<div class="l-content">
{{include file="article-content-bigpicture.tpl"}}
{{*<div class="banner-article">{{include file="_banner-article-990x60.tpl"}}</div>*}}
<div class="banner-article">{{include file="_banner-bigpicture-yadirect.tpl"}}</div>
{{include file="article-comments.tpl"}}
</div>
<!-- //основное содержимое -->
</div>
<!-- //оболочка основного содержимого -->
<!-- Подошва -->
{{include file="_footer.tpl"}}
<!-- //подошва -->
</div>
<!-- //оболочки фона и всего содержимого -->
</body>
</html>
