<div class="music-box">
  <h3 class="radio">СЛУХАЙ! - ГЛЯДЗI!</h3>
  {{ local }}
  {{ set_section number="1000" }}
  {{ list_articles length="3" ignore_issue="true" order="byPublishDate desc" }}
  <div class="player-item">
  <a href="{{ uri options="article"}}"><img src="/templates/newspaper/images/listen.gif" alt="" width="47px" class="btn"/></a>
  <p class="item">{{ $gimme->article->name }}<span>I  {{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }}</span></p>
  </div>
  {{ /list_articles }}
  
  <a href="{{ uri options="section" }}"><img src="/templates/newspaper/images/listen-button-big.gif" alt="радые Твой стыль" class="button" /></a>
  <p class="link"><a href="{{ uri options="section"}}">www.t-styl.info/radio</a></p>
  {{ /local }}
  </div>
