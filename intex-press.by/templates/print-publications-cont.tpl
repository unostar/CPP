<div class="section-content">

      <div class="section clearfix">

        <div class="section-left">

          <div class="section-title">{{ $gimme->section->name }}</div>

{{ unset_issue }}

{{ set_default_section }}

{{ list_articles length="1" }}

          <!-- begin section main story -->

          <div class="section-top-story clearfix">

            {{ if $gimme->article->has_image(2) }}<div class="border-div"><?php $NrArticle ="{{ $gimme->article->number }}"; article_thumbs ($NrArticle,2,"","",290,170); ?> 

              <p>{{ $gimme->article->image2->photographer }}</p>

            </div>

            {{ /if }}

            <div class="top-story-wrapper" {{ if ! $gimme->article->has_image(2) }}style="width:auto;"{{ /if }}>

              <h1><a href="{{ uri }}">{{ $gimme->article->name }}</a></h1>

              <p class="section-date">{{ $gimme->article->publish_date|camp_date_format:"%d %M %Y" }}. {{ list_article_comments }}{{ if $gimme->current_list->at_beginning }}&#8226; комментарии ({{ $gimme->article->comment_count }}){{ /if }}{{ /list_article_comments }}
{{ if $gimme->prev_list_empty }}{{ /if }}</p>

              <p>{{ $gimme->article->intro }}</p>

            </div>

          </div>

          <!-- end section main story -->

          <div class="section-divider">

            <hr/>

          </div>

{{ /list_articles }}

          <p class="section-rest-title">Другие новости этой рубрики</p>

{{ list_articles }}

{{ if $gimme->current_list->index == 1 }}

{{ else }}

          <h2><a href="{{ uri }}">{{ $gimme->article->name }}</a></h2>

          <p class="section-rest-date">{{ $gimme->article->publish_date|camp_date_format:"%d %M %Y" }}. {{ list_article_comments }}&#8226; комментарии ({{ $gimme->article->comment_count }}){{ /list_article_comments }}
{{ if $gimme->prev_list_empty }}{{ /if }}</p>

          <p>{{ $gimme->article->intro }}</p>

{{ /if }}

{{ /list_articles }}

        </div>

        <div class="section-right">

          {{ include file="section-right.tpl" }}

        </div>

        <div class="section-fulldivider">

          <hr />

        </div>

      </div>

<div class="banner-section">

      {{ include file="banner-middle728x90.tpl" }}

</div>

    </div>