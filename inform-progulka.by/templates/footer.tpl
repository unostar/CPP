<div id="footer">
      <div class="wrap">
          <div class="footfloat left">
              <img alt="Inform Progulka" src="/templates/images/footlogo1.gif" />
              <ul>
                  {{ local }}
                  {{ set_issue number="1" }}
                  {{ set_section number="810" }}
                  {{ list_articles length="1" constraints="type is page"}}
                  <li><a href="{{ uri options="article" }}">{{ $gimme->section->name }}</a></li>
                  {{ /list_articles }}
                  {{ set_section number="830" }}
                  {{ list_articles length="1" }}
                  <li><a href="{{ uri options="article" }}">{{ $gimme->section->name }}</a></li>
                  {{ /list_articles }}
                  {{ /local }}
                    <li><a href="http://{{ $gimme->publication->site }}?tpl=163#inform-progulka">Архив PDF-версий</a></li>
                    
                    <li>{{ local }}{{ set_section number="300" }}{{ list_articles ignore_issue="true" length="1" order="bypublishdate desc" }}{{ list_article_attachments }}
<a href="{{ uri options="articleattachment" }}">Скачать PDF-версию</a>{{ /list_article_attachments }}{{ /list_articles }}{{ /local }}</li>
                </ul>
            </div>
         
          <div class="footfloat left">
              <img alt="Gazeta pa Luninecki" src="/templates/images/footlogo3.gif" />
              <ul>
                  {{ local }}
                  {{ set_issue number="1" }}
                  {{ set_section number="810" }}
                  {{ list_articles length="1" }}
                  <li><a href="{{ uri options="article" }}">{{ $gimme->section->name }}</a></li>
                  {{ /list_articles }}
                  {{ set_section number="830" }}
                  {{ list_articles length="1" }}
                  <li><a href="{{ uri options="article" }}">{{ $gimme->section->name }}</a></li>
                  {{ /list_articles }}
                  {{ /local }}
                    <li><a href="http://{{ $gimme->publication->site }}?tpl=163#gazeta-luninecki">Архив PDF-версий</a></li>
                    <li>{{ local }}{{ set_section number="320" }}{{ list_articles ignore_issue="true" length="1" order="bypublishdate desc" }}{{ list_article_attachments }}
<a href="{{ uri options="articleattachment" }}">Скачать PDF-версию</a>{{ /list_article_attachments }}{{ /list_articles }}{{ /local }}</li>
                </ul>
            </div>         
            
          <div class="footfloat left">
              <img alt="VitaPres" src="/templates/images/footlogo2.gif" />
              <ul>
                  {{ local }}
                  {{ set_issue number="1" }}
                  {{ set_section number="810" }}
                  {{ list_articles length="1" }}
                  <li><a href="{{ uri options="article" }}">{{ $gimme->section->name }}</a></li>
                  {{ /list_articles }}
                  {{ set_section number="830" }}
                  {{ list_articles length="1" }}
                  <li><a href="{{ uri options="article" }}">{{ $gimme->section->name }}</a></li>
                  {{ /list_articles }}
                  {{ /local }}
                    <li><a href="http://{{ $gimme->publication->site }}?tpl=163#vita-press">Архив PDF-версий</a></li>
                    <li>{{ local }}{{ set_section number="310" }}{{ list_articles ignore_issue="true" length="1" order="bypublishdate desc" }}{{ list_article_attachments }}
<a href="{{ uri options="articleattachment" }}">Скачать PDF-версию</a>{{ /list_article_attachments }}{{ /list_articles }}{{ /local }}</li>
                </ul>
            </div>              
            
            <div class="footright right">

                  <ul>
                  {{ local }}
                  {{ set_issue number="1" }}
                  {{ list_sections constraints="number greater_equal 800" }}
                  {{ list_articles length="1" constraints="type is page" }}
                      <li><a {{ if $gimme->current_sections_list->index == 1 }}class="firsta" {{/if }}href="{{ uri options="article" }}">{{ $gimme->section->name }}</a></li>
                  {{ /list_articles }}
                  {{ /list_sections }}
                  {{ /local }}
                       <li><a href="http://{{ $gimme->publication->site }}?tpl=130">Архив</a></li>                        
                       <li><a href="http://{{ $gimme->publication->site }}/templates/feed/index.rss">RSS</a></li>
                    </ul>                
                <p>
                {{ local }}
                {{ set_current_issue }}
                {{ list_sections constraints="number smaller 200" }}
                   <a {{ if $gimme->current_sections_list->index == 1 }}class="firsta" {{/if }}href="{{ uri options="section" }}">{{ $gimme->section->name }}</a>
                {{ /list_sections }}
                {{ /local }}
                </p>
            </div><!-- /.footright -->
            
            <div class="clear"></div>
            
            <div id="lastline">
              <div class="footfloat wider left">
                <p>© Copyright {{$smarty.now|date_format:"%Y"}}
 ИНФОРМ-ПРОГУЛКА</p>
              </div>
            
              <div class="footright right">
           
{{ search_form template="search.tpl" html_code="class=\"left\"" submit_button="" button_html_code="class=\"left\" id=\"searchfootbutton\"" }}                     
      {{ camp_edit object="search" attribute="keywords" html_code="class=\"left-rounded left\" id=\"searchfootfield\"" }} 
{{ /search_form }}                                              
                    
                    <a class="left" href="http://{{ $gimme->publication->site }}?tpl=130">Расширенный поиск по сайту</a>
              </div><!-- /.footright -->
        </div><!-- /.lastline -->             
        </div><!-- /.wrap -->
    </div><!-- /#footer -->
    
<script>
var pp_gemius_identifier = new String('0tKVH__irbSmN7QnawW3NqblHSEs4u_81so1hrgCsY3.67');
var pp_gemius_hitcollector = 'gaby1.hit.gemius.pl';
</script>
<script src="http://inform-progulka.by/xgemius.js"></script>
