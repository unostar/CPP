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
<div class="b-maincontent">
  <h2 class="header-block m-header-block-blue"><b class="bg-header-block-l"></b><b class="bg-header-block-r"></b><span class="header-block-i">{{$gimme->section->name}}</span></h2>
  <div class="b-maincontent-il"><div class="b-maincontent-ir"><div id="section-content" class="b-maincontent-i">
{{include file="section-content-bigpicture.tpl"}}
  </div></div></div>
  <span class="b-maincontent-f"><b class="bg-maincontent-f-l"></b><b class="bg-maincontent-f-r"></b><b class="bg-maincontent-f-i"></b></span>
</div>
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
