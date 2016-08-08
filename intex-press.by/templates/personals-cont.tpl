<div class="section-content">

      <div class="section clearfix">

        <div class="section-left">

          <div class="section-title">{{ $gimme->section->name }}</div>

{{ list_articles }}

          <h2><a href="{{ uri }}">{{ $gimme->article->name }}</a></h2>

          <p class="section-rest-date">{{ $gimme->article->publish_date|camp_date_format:"%d %M %Y" }}. {{ list_article_comments }}&#8226; комментарии ({{ $gimme->article->comment_count }}){{ /list_article_comments }}
{{ if $gimme->prev_list_empty }}{{ /if }}</p>

          <p>{{ $gimme->article->intro }}</p>

{{ /list_articles }}



<!-- begin list of articles from previous issue -->

{{ list_issues length="2" order="bynumber desc" }}

{{ if $gimme->issue->is_current }}

{{ else }}   

{{ list_articles }}

{{ if $gimme->current_list->at_beginning }}          

          <div class="section-divider">

            <hr/>

          </div>

<p class="section-extra-title">More {{ $gimme->section->name }} from previous issue</p>{{ /if }}

          <p class="section-extra-links"><a href="{{ uri }}">{{ $gimme->article->name }}</a></p>

{{ /list_articles }}

{{ /if }}

{{ /list_issues }}

<!-- end list of articles from previous issue -->



        </div>

        <div class="section-right">

          {{ include file="section-right.tpl" }}

        </div>

        <div class="section-fulldivider">

          <hr />

        </div>

      </div>

      <div class="banner-section" style="font-size:14px;font-weight:normal;line-height:90px;">(728 x 90)</div>

    </div>