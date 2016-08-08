<div class="section-content">

      <div class="section clearfix">

        <div class="section-left">

          <div class="section-title">{{ $gimme->section->name }}</div>

{{ list_articles order="bypublishdate desc" ignore_issue="true"}}

          <h2><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h2>

          <p class="section-rest-date">{{ $gimme->article->publish_date|camp_date_format:"%d %M %Y" }}. {{ list_article_comments }}&#8226;{{ $gimme->article->comment_count }} комментарии{{ /list_article_comments }}
{{ if $gimme->prev_list_empty }}{{ /if }}</p>

          <p>{{ $gimme->article->intro }}</p>

{{ /list_articles }}
{{ if $gimme->prev_list_empty }}

<h3 style="color: #dd0000;margin:0 0 20px 0px;">Нет результатов</h3>

{{ /if }}



        </div>

        <div class="section-right">

{{ include file="authors-cont-navi.tpl" }}

        </div>

        <div class="section-fulldivider">

          <hr />

        </div>

      </div>

<div class="banner-section">

      {{ include file="banner-middle728x90.tpl" }}

</div>

    </div>