<div class="full-sbdiv">
              <div id="concurs">
                <h3>КОНКУРС</h3>
                {{ local }}
                {{ set_section number="210" }}
                {{ list_articles length="1" ignore_issue="true" }}
                  <p><em>{{ $gimme->article->name }}</em></p>
                  <p>{{ $gimme->article->intro }}</p>
                  <ul>
                    <li><a href="{{ uri options="article" }}">Условия конкурса</a></li> 
                    <li><a href="{{ uri options="article" }}">Работы участников</a></li>
                    <!-- li><a href="">Результаты конкурса</a></li -->
                  </ul>
                {{ /list_articles }}
                {{ /local }}
                </div><!-- /#concurs -->
            </div><!-- /.full-sbdiv -->