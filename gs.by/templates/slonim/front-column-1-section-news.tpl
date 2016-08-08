<div class="other-news clearfix">
{{ list_articles length="5" constraints="OnFrontPage is on OnSection is off" order="bypublishdate desc"}}
<div class="details">
  <div class="title"><a href="{{ uri options="section" }}">{{ $gimme->section->name }}</a></div>
  <div class="meta">
  <span>{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }}</span>
  <img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  />
  <span>Автор {{ $gimme->article->Author->name }}</span>
  <img src="/templates/slonim/images/footer-spacer.gif" alt="spacer"  />
  <span>Комментарий ({{$gimme->article->comment_count}})</span>
  </div>
</div>
<div class="bgr">
  {{ if $gimme->article->has_image(1) }}<img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description }}" />{{ /if }}
  <h2><a href="{{ uri }}">{{ $gimme->article->name }}</a></h2>
  <p>{{ $gimme->article->Intro|strip_tags:false }}</p>
</div>
{{ /list_articles }}
</div>