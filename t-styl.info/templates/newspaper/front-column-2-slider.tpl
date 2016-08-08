      <div class="column-2-slides">
        <div id="paginate-slides" class="pagination">
        <a href="#" class="prev"></a>
          <div id="slides" class="sliderwrapper">
            <div class="contentdiv">
              <ul>
              {{ list_sections constraints="number greater 69 number smaller 91" }}
                {{ list_articles length="1" ignore_issue="true" order="byPublishDate desc" }}
                <li>
                  <h4><a href="{{ uri options="section" }}">{{ $gimme->section->name }}&nbsp;>></a></h4>
              {{ if $gimme->article->has_image(1) }}
                  <a href="{{ uri options="article" }}"><img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description }}" /></a>
              {{ /if }}
                  <p class="title"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{ include file="newspaper/icons.tpl" }}</p>
              {{ if $gimme->article->author->name != "" }}
                  <p class="author">Пiша <a href="{{ uri options="template newspaper/author.tpl" }}">{{ $gimme->article->author->name }}</a>&nbsp;&nbsp;I&nbsp;&nbsp;{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }}</p>
              {{ /if }}
                  {{ if $gimme->article->comments_enabled }}
                  <a href="{{ uri options="article" }}#add_comment" class="link">Каментары
                    {{ list_article_comments order="bydate asc"}}
                      {{ if $gimme->current_list->at_beginning }}({{ $gimme->current_list->count }}){{ /if }}
                    {{ /list_article_comments }}
                  {{ if $gimme->prev_list_empty }}(0){{ /if }}</a>
                  {{ /if }}
                  &nbsp;&nbsp;|&nbsp;&nbsp;<a href="{{ uri options="article" }}" class="link">Чытай далей</a>
                </li>
                {{ /list_articles }}
              {{ if $gimme->current_list->at_end }}{{else}}<li class="divider"></li>{{ /if }}
              {{ /list_sections }}
              </ul>
            </div>
            <div class="contentdiv">
              <ul>
              {{ list_sections constraints="number greater 99 number smaller 141" }}
                {{ list_articles length="1" ignore_issue="true" order="byPublishDate desc" }}
                <li>
                  <h4><a href="{{ uri options="section" }}">{{ $gimme->section->name }}&nbsp;>></a></h4>
              {{ if $gimme->article->has_image(1) }}
                  <a href="{{ uri options="article" }}"><img src="{{ uri options="image 1" }}" alt="{{ $gimme->article->image1->description }}" /></a>
              {{ /if }}
                  <p class="title"><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>{{ include file="newspaper/icons.tpl" }}</p>
              {{ if $gimme->article->author->name != "" }}
                  <p class="author">Пiша <a href="{{ uri options="template newspaper/author.tpl" }}">{{ $gimme->article->author->name }}</a>&nbsp;&nbsp;I&nbsp;&nbsp;{{ $gimme->article->publish_date|camp_date_format:"%d.%m.%Y" }}</p>
              {{ /if }}
                  {{ if $gimme->article->comments_enabled }}
                  <a href="{{ uri options="article" }}#add_comment" class="link">Каментары
                    {{ list_article_comments order="bydate asc"}}
                      {{ if $gimme->current_list->at_beginning }}({{ $gimme->current_list->count }}){{ /if }}
                    {{ /list_article_comments }}
                  {{ if $gimme->prev_list_empty }}(0){{ /if }}</a>
                  {{ /if }}
                  &nbsp;&nbsp;|&nbsp;&nbsp;<a href="{{ uri options="article" }}" class="link">Чытай далей</a>
                </li>
                {{ /list_articles }}
              {{ if $gimme->current_list->at_end }}{{else}}<li class="divider"></li>{{ /if }}
              {{ /list_sections }}
              </ul>
            </div>
          </div>
        <a href="#" class="next"></a>
      </div>
      <script type="text/javascript">init('slides')</script>
      </div>