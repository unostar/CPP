<div id="most" class="ui-tabs">
        <ul class="ui-tabs-nav">
            <li class="top-rounded"><a href="#mostread"><span>САМЫЕ ЧИТАЕМЫЕ</span></a></li>
            <li class="top-rounded"><a href="#mostcommented"><span>ПОСЛЕДНИЕ КОММЕНТАРИИ</span></a></li>
        </ul>
                <div id="mostread">
                  <ul>
                  
{{ local }}
{{ set_current_issue }}
{{ list_articles length="12" order="bypopularity desc" constraints="type is article section greater 5 section smaller 150 issue greater `$gimme->issue->number-5`"" }}                  
                      <li><a href="{{ uri options="article" }}">{{ $gimme->article->name }} ({{ $gimme->article->reads }})</a></li>
{{ /list_articles }}
{{ /local }}

                    </ul>
                </div><!-- /#mostread -->
                <div id="mostcommented">
                  <ul>
                  
{{ list_articles length="15" ignore_issue="true" ignore_section="true" order="byLastComment desc" }}                  
                      <li><a href="{{ uri options="article" }}">{{ $gimme->article->name }} <span class="comment-count">{{ $gimme->article->comment_count }}</span></a></li>
{{ /list_articles }}                  

                    </ul>
                </div><!-- /#mostcommented -->                
            </div><!-- /#most -->            
