            <div id="other-articles">
              <img alt="ДРУГИЕ СТАТЬИ ИЗ РУБРИКИ {{ $gimme->section->name }}" src="/templates/images/other-articles-title.png" />
                <div class="inner">
                  <ul>
{{ assign var="curr_art" value=$gimme->article->number }}
{{ list_articles length="10" ignore_issue="true" order="bypublishdate desc" constraints="number not $curr_art" }}            
                      <li><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></li>
{{ /list_articles }}
                  </ul>
                </div>
                <div class="clear"></div>
            </div><!-- /#other-articles -->
