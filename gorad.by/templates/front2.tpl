{{include file="_html-head2.tpl"}}
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
      {{include file="front-central-column2.tpl"}}
      {{include file="front-bigpicture.tpl"}}
      {{include file="front-bottom-info-block.tpl"}}
      </div>
      <div class="l-navigation">
        <div class="b-n-banner top">{{include file="_banner-right-column-250x130.tpl"}}</div>
        {{include file="right-column-block-consultant.tpl"}}
        {{include file="right-column-block-poll.tpl"}}
        {{include file="right-column-block-it.tpl"}}
        {{include file="right-column-block-most-read.tpl"}}
        {{include file="right-column-block-press-release.tpl"}}
        {{include file="right-column-block-MZ.tpl"}}
        {{*include file="right-column-block-contest.tpl"*}}
        <div class="b-n-banner">{{include file="_banner-right-column-250x250.tpl"}}</div>
        {{include file="right-column-block-interest.tpl"}}
        {{include file="right-column-block-calendar.tpl"}}
        {{include file="right-column-block-links.tpl"}}
      </div>
    </div>
  {{include file="_footer.tpl"}}
</div>
</body>
</html>