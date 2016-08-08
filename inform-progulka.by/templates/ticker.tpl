<div id="ticker-wrapper" class="no-js right">
    <ul id="js-news" class="js-hidden">
    {{ list_articles length="5" ignore_issue="true" ignore_section="true" constraints="type is article section smaller 200" order="byPublishDate desc" }}
      <li class="news-item"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a><img alt="." src="/templates/images/midplus.png" /><a class="seclink" href="{{ uri options="section" }}">{{ $gimme->section->name }}</a><img alt="." src="/templates/images/midplus.png" />{{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y %H:%i" }}</li>
    {{ /list_articles }}
    </ul>
  </div>   