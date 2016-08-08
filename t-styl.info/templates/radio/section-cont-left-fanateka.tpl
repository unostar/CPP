{{set_default_issue}}
{{set_default_section}}

<div class="section-left">
     <h1>{{ $gimme->section->name }}</h1>

{{list_articles order="bySectionOrder asc"}}
     <div class="section-left-list">
{{ if $gimme->article->has_image(2) }}
      <img src="{{ uri options="image 2" }}" alt="{{ $gimme->article->image2->description }}" width="257px" />
{{ /if }}
          <h2><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h2>
<p class="date">{{ if $gimme->article->author->name == "" }}{{ else }}{{ $gimme->article->author->name }}<span>I</span>{{/if}}{{ $gimme->article->publish_date|camp_date_format:"%d %m %Y" }}</p>         
    <div class="intro">{{ $gimme->article->Intro }}</div>
{{ if $gimme->article->has_attachments }}
{{ list_article_attachments }}
    <p>Спіс песняў:</p>
    <p class="download">{{$gimme->attachment->description}}</p>
{{ /list_article_attachments }}
{{ /if }}
    </div>
{{ /list_articles }}
</div>

