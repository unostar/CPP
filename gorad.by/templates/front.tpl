{{include file="_html-head.tpl"}}
<body>
<div class="l-container">
  {{include file="_header.tpl"}}
    <div class="l-wrapper">
      <div class="l-content">
      {{include file="front-main-news.tpl"}}
        <div class="l-photovideo g-clean">
          <div class="g-left">{{include file="front-photo-slider.tpl"}}<div class="c-photovideo_banner">{{include file="_banner-front-photo.tpl"}}</div></div>
          <div class="g-right">{{include file="front-video-slider.tpl"}}</div>
        </div>
      {{include file="front-central-column.tpl"}}
      {{include file="front-bigpicture.tpl"}}
      {{include file="front-bottom-info-block.tpl"}}
      </div>
      <div class="l-navigation">
        {{ include file="_sidebar.tpl" }}
      </div>
    </div>
  {{include file="_footer.tpl"}}
</div>
</body>
</html>