<div id="header">
    <div id="toppart">
          <div class="wrap">
                <div id="headfloat" class="right">
                  <ul>
                  {{ local }}
                  {{ set_issue number="1" }}
                  {{ list_sections constraints="number greater_equal 800" }}
                  {{ list_articles length="1" constraints="type is page" }}
                      <li><a class="bottom-rounded" href="{{ uri options="article" }}">{{ $gimme->section->name }}</a></li>
                  {{ /list_articles }}
                  {{ /list_sections }}
                  {{ /local }}
                       <li><a class="bottom-rounded" href="http://{{ $gimme->publication->site }}?tpl=130">Архив</a></li>                        
                       <li><a class="bottom-rounded" href="http://{{ $gimme->publication->site }}/templates/feed/index.rss">RSS</a></li>
                    </ul>
               
{{ search_form template="search.tpl" html_code="class=\"right\"" submit_button="" button_html_code="class=\"left\" id=\"searcheadbutton\"" }}                     
      {{ camp_edit object="search" attribute="keywords" html_code="class=\"left left-rounded\" id=\"searcheadfield\"" }} 
{{ /search_form }}                              
                    
                </div><!-- /#headfloat -->            
            <a href="/"><img id="logopng" alt="main logo" src="/templates/images/logo-trans.png" /></a>
            </div><!-- /.wrap -->
        </div><!-- /#toppart -->            
        <div id="bottompart">
          <div class="wrap">
            <div id="sublogo" class="left">
                  <p>ВИТА-ПРЕСС, Газета <span>па-лунiнецкi</span></p>
                </div><!-- /#sublogo -->
                <div id="lastupdate" class="right">
                  <p>Последнее обновление сайта: 
                    {{ local }}{{ list_articles length="1" ignore_issue="true" ignore_section="true" order="bypublishdate desc" }}{{ $gimme->article->publish_date|camp_date_format:"%h:%i:%S" }}{{ /list_articles }}{{ /local }}</p>
                    <p><strong>http://www.inform-progulka.by</strong></p>
                </div><!-- /#lastupdate -->
            </div><!-- /.wrap -->
        </div>
    </div><!-- /#header -->