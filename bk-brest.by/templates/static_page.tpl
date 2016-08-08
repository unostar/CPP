{{if !$smarty.get.caricature}}
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
{{/if}}
{{set_default_issue}}
{{set_default_section}}
{{if $gimme->section->number == 430}}{{include file="static_page_cont-caricature.tpl"}}
{{elseif $gimme->section->number == 440}}{{include file="static_page_cont-art-gallery.tpl"}}
{{elseif $gimme->section->number == 450}}{{include file="static_page_cont-photo-gallery.tpl"}}
{{else}}{{include file="static_page_cont.tpl"}}{{/if}}
{{set_current_issue}}
{{if !$smarty.get.caricature}}
                  <!-- // right -->
                  <!-- Left -->
                    <div class="l-col2_column l-col2_cl196">
                      {{include file="left-column-freshnews.tpl"}}
                      {{include file="left-column-calendar.tpl"}}
                      {{include file="left-column-most-popular.tpl"}}
                      {{include file="left-column-comments.tpl"}}
                    </div>
                  <!-- // left -->
                </div>
              <!-- // 2 columns -->
            </div>
          <!-- //основное содержимое -->
          <!-- Боковая колонка -->
            <div class="l-navigation">
              {{include file="right-column-print-issue.tpl"}}
              {{include file="right-column-columnist.tpl"}}
              {{include file="right-column-favourites.tpl"}}
              {{include file="right-column-litera.tpl"}}
              {{include file="right-column-foto-gallery.tpl"}}
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
{{/if}}