<div id="ourpubs" class="right"> 
                  <img alt="НАШИ ИЗДАНИЯ" src="/templates/images/ourpubs-title.png" />
                    <div id="slider">
                      <ul>
                        <li>
                            {{ local }}
                            {{ set_section number="300" }}
                            {{ list_articles ignore_issue="true" length="1" order="bypublishdate desc" }}
                          <div class="slide-item left"> <a href="{{ uri options="template archive-print.tpl" }}#inform-progulka"><img alt="титульный лист" src="{{ uri options="image 1 width 190 height 270" }}" /></a> </div>
                          <!-- /.slide-item -->
                          <div class="ourpubs-tools right">
                            <h3>ИНФОРМ-<br />
                                <span>ПРОГУЛКА</span></h3>
                            <h5>Еженедельное информационное издание</h5>

                            {{ list_article_attachments }}
                            <p class="bulleted"><a href="{{ uri options="articleattachment" }}">Скачать PDF-версию</a></p>
                            {{ /list_article_attachments }} 
                            <p class="bulleted"><a href="{{ uri options="template archive-print.tpl" }}#inform-progulka">Архив PDF</a></p>
                            <p class="bulleted"><a href="{{ uri options="image 1" }}">Увеличить титульный лист</a></p>
                            {{ /list_articles }}
                            {{ /local }}
                            <hr noshade="noshade" size="1" width="100%" color="#ececec" />
                            <p>Узнать больше о наших изданиях Вы можете, пройдя по <a href="http://progulka.omniton.net/ru/page/print_publications/4/%D0%9D%D0%B0%D1%88%D0%B8-%D0%B8%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D1%8F.htm">ссылке.</a></p>
                            <p>Об условиях подписки на наши издания - читайте <a href="http://progulka.omniton.net/ru/page/subscription/2/%D0%9F%D0%BE%D0%B4%D0%BF%D0%B8%D1%81%D0%BA%D0%B0.htm">здесь.</a></p>
                          </div>
                          <!-- /.ourpubs-tools -->
                        </li>

                        <li>
                            {{ local }}
                            {{ set_section number="320" }}
                            {{ list_articles ignore_issue="true" length="1" order="bypublishdate desc" }}
                          <div class="slide-item left"> <a href="{{ uri options="template archive-print.tpl" }}#gazeta-luninecki"><img alt="титульный лист" src="{{ uri options="image 1 width 190 height 270" }}" /></a> </div>
                          <!-- /.slide-item -->
                          <div class="ourpubs-tools right">
                            <h3>ГАЗЕТА-<br />
                                <span>ПА-ЛУНIНЕЦКI</span></h3>
                            <h5>Еженедельное информационное издание</h5>

                            {{ list_article_attachments }}
                            <p class="bulleted"><a href="{{ uri options="articleattachment" }}">Скачать PDF-версию</a></p>
                            {{ /list_article_attachments }} 
                            <p class="bulleted"><a href="{{ uri options="template archive-print.tpl" }}#inform-progulka">Архив PDF</a></p>
                            <p class="bulleted"><a href="{{ uri options="image 1" }}">Увеличить титульный лист</a></p>
                            {{ /list_articles }}
                            {{ /local }}
                            <hr noshade="noshade" size="1" width="100%" color="#ececec" />
                            <p>Узнать больше о наших изданиях Вы можете, пройдя по <a href="http://progulka.omniton.net/ru/page/print_publications/4/%D0%9D%D0%B0%D1%88%D0%B8-%D0%B8%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D1%8F.htm">ссылке.</a></p>
                            <p>Об условиях подписки на наши издания - читайте <a href="http://progulka.omniton.net/ru/page/subscription/2/%D0%9F%D0%BE%D0%B4%D0%BF%D0%B8%D1%81%D0%BA%D0%B0.htm">здесь.</a></p>
                          </div>
                          <!-- /.ourpubs-tools -->
                        </li>
                        
                        <li>
                            {{ local }}
                            {{ set_section number="310" }}
                            {{ list_articles ignore_issue="true" length="1" order="bypublishdate desc" }}
                          <div class="slide-item left"> <a href="{{ uri options="template archive-print.tpl" }}#vita-press"><img alt="титульный лист" src="{{ uri options="image 1 width 190 height 270" }}" /></a> </div>
                          <!-- /.slide-item -->
                          <div class="ourpubs-tools right">
                            <h3>ВИТА-<br />
                                <span>ПРЕСС</span></h3>
                            <h5>Еженедельное информационное издание</h5>

                            {{ list_article_attachments }}
                            <p class="bulleted"><a href="{{ uri options="articleattachment" }}">Скачать PDF-версию</a></p>
                            {{ /list_article_attachments }} 
                            <p class="bulleted"><a href="{{ uri options="template archive-print.tpl" }}#inform-progulka">Архив PDF</a></p>
                            <p class="bulleted"><a href="{{ uri options="image 1" }}">Увеличить титульный лист</a></p>
                            {{ /list_articles }}
                            {{ /local }}
                            <hr noshade="noshade" size="1" width="100%" color="#ececec" />
                            <p>Узнать больше о наших изданиях Вы можете, пройдя по <a href="http://progulka.omniton.net/ru/page/print_publications/4/%D0%9D%D0%B0%D1%88%D0%B8-%D0%B8%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D1%8F.htm">ссылке.</a></p>
                            <p>Об условиях подписки на наши издания - читайте <a href="http://progulka.omniton.net/ru/page/subscription/2/%D0%9F%D0%BE%D0%B4%D0%BF%D0%B8%D1%81%D0%BA%D0%B0.htm">здесь.</a></p>
                          </div>
                          <!-- /.ourpubs-tools -->
                        </li>                        
                        
                      </ul>
                    </div>
                <!-- /#slider -->
                    <script type="text/javascript">
          $(document).ready(function(){ 
            $("#slider").easySlider({
              auto: false, 
              continuous: true
            });
          }); 
          </script>
                </div>
