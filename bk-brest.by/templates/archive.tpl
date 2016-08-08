{{include file="_html_header.tpl"}}
<body>
<!-- Оболочки фона и всего содержимого -->
  <div class="l-container">
    {{include file="header.tpl"}}
      <!-- Оболочка основного содержимого -->
        <div class="l-wrapper">
          <!-- Основное содержимое -->
            <div class="l-content">
              <!-- 2 columns -->
                <div class="l-col2 g-clean">
                  <!-- Right -->
                    <div class="l-col2_column l-col2_cr440">
                      <div id="archive_search_form">{{include file="archive-search-form.tpl"}}</div>
                      <div id="archive_search_results">{{include file="archive-search-results.tpl"}}</div>
                    </div>
                  <!-- // right -->
                  <!-- Left -->
                    <div class="l-col2_column l-col2_cl196">
                      {{include file="left-column-freshnews.tpl"}}
                      {{include file="left-column-calendar.tpl"}}
                    </div>
                  <!-- // left -->
                </div>
              <!-- // 2 columns -->
            </div>
          <!-- //основное содержимое -->
          <!-- Боковая колонка -->
            <div class="l-navigation">
              {{include file="right-column-print-issue.tpl"}}
              {{include file="right-column-partner-links.tpl"}}
              {{include file="_banner-right-column-270x60.tpl"}}
            </div>
          <!-- //боковая колонка -->
        </div>
      <!-- //оболочка основного содержимого -->
    {{include file="footer.tpl"}}
  </div>
<!-- //оболочки фона и всего содержимого -->
</body>
</html>