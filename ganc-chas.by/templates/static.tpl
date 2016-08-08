{{include file="_html-head.tpl"}}

<body>
<!-- Оболочки фона и всего содержимого -->
  <div class="l-container">
    {{include file="_header.tpl"}}
      <!-- Оболочка основного содержимого -->
        <div class="l-wrapper">
          <!-- Основное содержимое -->
            <div class="l-content">
              <div class="b-main header-huge">{{$gimme->section->name}}</div>
              <div class="l-2col">
                <!-- Центральная колонка -->
                <div class="g-left">{{include file="static-`$gimme->section->url_name`.tpl"}}</div>
                <!-- //центральная колонка -->
                {{include file="right-column.tpl"}}
              </div>
            </div>
          <!-- //основное содержимое -->
          <!-- Навигация -->
            <div class="l-aside">
              {{include file="block-left-column-search.tpl"}}
              {{include file="block-left-column-section-specproekty.tpl"}}
              {{include file="block-left-column-most-read-comments.tpl"}}
              <div class="b-main">
                <div class="b-a-banner">
                  <div>{{include file="_banner-section-left-column.tpl"}}</div> 
                </div>
              </div>
            </div>
          <!-- //навигация -->
        </div>
      <!-- //оболочка основного содержимого -->
    {{include file="_footer.tpl"}}
  </div>
<!-- //оболочки фона и всего содержимого -->
</body>
</html>