              <div id="inform-progulka">

                {{if $smarty.get.page}}{{assign var="page" value=$smarty.get.page}}{{else}}{{assign var="page" value="1"}}{{/if}}

                {{list_articles columns="10" ignore_issue="true" constraints="section is 300" order="bypublishdate desc"}}
                  {{if $gimme->current_list->row == $page}}

                    <h2>{{ $gimme->article->name }}</h2>
                    <ul>  
                        <li><a href="{{ uri options="image 1" }}">посмотреть титульный лист</a></li>
                        {{ list_article_attachments }}
                        <li><a href="{{ uri options="articleattachment" }}">скачать PDF-версию ({{ $gimme->attachment->size_kb }}kb)</a></li>
                        {{ /list_article_attachments }}  
                    </ul>

                  {{/if}}
                {{/list_articles}}

                {{list_articles columns="10" ignore_issue="true" constraints="section is 300" order="bypublishdate desc"}}
                  {{if $gimme->current_list->index==1 }}
                    <div class="backandforw">
                      <p>
                        {{if $page==1}}
                          Назад
                        {{else}}
                          <a href="{{ uripath }}?tpl=163&page={{ $page-1 }}">Назад</a>
                        {{ /if }}
                        <span class="middot">+</span>
                        {{if $gimme->current_list->count > ($page * 10)}}
                          <a href="{{ uripath }}?tpl=163&page={{ $page+1 }}">Вперед</a>
                        {{else}}
                          Вперед
                        {{ /if }}
                      </p>
                    </div><!-- /.backandforw -->
                  {{/if}}
                {{/list_articles}}

              </div><!-- /#inform-progulka -->