{{include file="_html-head.tpl"}}
<body>
<!-- Оболочки фона и всего содержимого -->
<div class="l-container">
{{include file="_header.tpl"}}
<!-- Оболочка основного содержимого -->
<div class="l-wrapper">
<!-- Основное содержимое -->
<div class="l-content">
<div class="b-maincontent">
<h2 class="header-block m-header-block-blue"><b class="bg-header-block-l"></b><b class="bg-header-block-r"></b>
<span class="header-block-i">{{$gimme->section->name}}</span></h2>
<div class="b-maincontent-il"><div class="b-maincontent-ir"><div class="b-maincontent-i">
<div id="archive-content">
{{include file="archive-content.tpl"}}
</div>
</div></div></div>
<span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div>
</div>
<!-- //основное содержимое -->
<!-- Навигация -->
<div class="l-navigation">
{{ include file="_sidebar.tpl" }}
</div>
<!-- //навигация -->
</div>
<!-- //оболочка основного содержимого -->
{{include file="_footer.tpl"}}
</div>
<!-- //оболочки фона и всего содержимого -->
</body>
</html>
