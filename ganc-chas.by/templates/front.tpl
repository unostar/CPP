{{include file="_html-head.tpl"}}

<body>
<!-- Оболочки фона и всего содержимого -->
  <div class="l-container">
    {{include file="_header.tpl"}}
    <!-- Оболочка основного содержимого -->
      <div class="l-wrapper">
        <!-- Основное содержимое -->
          <div class="l-content">
          {{include file="front-main-news.tpl"}}
            <div class="l-2col">
              {{include file="front-center-column.tpl"}}
              {{include file="right-column.tpl"}}
            </div>
          </div>
        <!-- //основное содержимое -->
        <!-- Навигация -->
          <div class="l-aside">
            {{include file="block-left-column-search.tpl"}}
            {{include file="block-left-column-catalog.tpl"}}
            {{include file="block-left-column-front-specproekty.tpl"}}
            {{include file="block-left-column-most-read-comments.tpl"}}
           {{include file="s_front.tpl"}} 
            {{include file="banner-left 160x120.tpl"}}
          </div>
        <!-- //навигация -->
      </div>
    <!-- //оболочка основного содержимого -->
    {{include file="_footer.tpl"}}
  </div>
<!-- //оболочки фона и всего содержимого -->
</body>
</html>
