            <div id="article-itself">
              <div class="article-image">
                  {{ if $gimme->article->has_image(2) }}<img alt="{{ $gimme->article->image2->description }}" src="{{ uri options="image 2" }}" />{{ /if }}
                    {{ if !($gimme->article->image2->description == "") }}
                  <div class="image-description">
                    <p>{{ $gimme->article->image2->description }}
                    {{ if !($gimme->article->image2->photographer == "") }}<br /><span>Фото:</span> {{ $gimme->article->image2->photographer }}{{ /if }}</p>
                  </div><!-- /.image-description -->
                  {{ /if }}
                </div><!-- /.article-image -->

{{ include file="article-tools.tpl" }}

              <h1>{{ $gimme->article->name }}</h1>
                <div class="art-metadat"><p>{{ $gimme->article->author->name }} <img alt="." src="/templates/images/midplus.png" /> {{ $gimme->article->publish_date|camp_date_format:"%e.%m.%Y %H:%i" }}</div>
                
                <div class="pe-div"><strong>{{ $gimme->article->intro }}</strong></div>
                <div class="pe-div">{{ $gimme->article->full_text }}</div>
               
{{ include file="article-tools.tpl" }}              

                <!-- AddThis Button BEGIN -->
                <div class="addthis_toolbox addthis_default_style ">
                  <a href="http://www.addthis.com/bookmark.php?v=250&amp;pubid=xa-4e19c91c46695552" class="addthis_button_compact">Поделиться</a>
                  <span class="addthis_separator">|</span>
                  <a class="addthis_button_twitter"></a>
                  <a class="addthis_button_facebook"></a>
                  <a class="addthis_button_vk"></a>
                </div>
                <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4e19c91c46695552"></script>
                <!-- AddThis Button END -->

            </div><!-- article-itself -->
