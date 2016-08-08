{{ if $gimme->article->comments_enabled }}
            <div id="article-comments">
            
{{ if $gimme->submit_comment_action->is_error }}
<p class="hot">Памылка падчас каментавання:
    {{ $gimme->submit_comment_action->error_message }}
</p>
{{ /if }}

{{ if $gimme->submit_comment_action->rejected }}
    <p class="hot">Каментар адхілены!</p>
{{ /if }}

{{ if $gimme->submit_comment_action->defined }}
{{ if $gimme->publication->moderated_comments }}
    <p class="hot">Ваш каментар адпраўлены і чакае мадэрацыі</p>
{{ /if }}
{{ /if }}

{{ if $gimme->submit_comment_action->is_error }}
    <p class="hot">{{ $gimme->submit_comment_action->error_message }}
        ({{ $gimme->submit_comment_action->error_code }})</p>
{{ /if }}

{{ if $gimme->user->blocked_from_comments }}
    <p class="hot">Гэтаму карыстачу забаронена каментаванне</p>
{{ /if }}            

{{ list_article_comments order="bydate asc" }}
            
              <div class="comment-item">
                  <div class="comment-metadata left">
                      <p>{{ $gimme->comment->submit_date|camp_date_format:"%e.%m.%Y %H:%i" }}<br />
                        <span>{{ $gimme->comment->subject }}</span></p>
                    </div><!-- /.comment-metadata -->
                    <div class="comment-content right">
                      <p>{{ $gimme->comment->content }}</p>
                    </div><!-- /.comment-content -->
                </div><!-- /.comment-item -->
                
{{ /list_article_comments }}                  
                     
                {{ comment_form html_code="id=\"comment-form\"" submit_button="ОТПРАВИТЬ КОММЕНТАРИЙ" button_html_code="id=\"submit-comment\" class=\"rounded\"" }}
                  <div class="half left">
                        <div class="comment-form-element">
                      <label id="smaller" class="left" for="yourname">Имя:</label>
                      {{ camp_edit object="comment" attribute="subject" html_code="class=\"right\" id=\"yourname\"" }}
                        </div><!-- /.comment-form-element -->
                        <div class="comment-form-element">
                      <label id="smaller" class="left" for="youremail">E-mail:</label>
                      {{ camp_edit object="comment" attribute="reader_email" html_code="class=\"right\" id=\"youremail\"" }}
                        </div><!-- /.comment-form-element -->                        
            <div class="comment-form-element">
                          <label for="comment-content">Комментарий:</label>
                          {{ camp_edit object="comment" attribute="content" html_code="id=\"comment-content\"" }}
                        </div><!-- /.comment-form-element -->
                  </div><!-- /.half /left -->
                    <div class="half right">
                    {{ if $gimme->publication->captcha_enabled }}
                      <div class="comment-form-element">
                        <img alt="Captcha" src="{{ captcha_image_link }}" />
                          <label for="comment-captcha">Введите код на картинке:</label>
                          {{ camp_edit object="captcha" attribute="code" html_code="id=\"comment-captcha\""}}
                        </div><!-- /.comment-form-element -->
                    {{ /if }} 
            <div class="comment-form-element">
                          <label class="hide" for="submit-comment">ОТПРАВИТЬ КОММЕНТАРИЙ</label>
                          {{ /comment_form }}
                        </div><!-- /.comment-form-element -->
                    </div>
                <div class="clear"></div>           
            </div><!-- /#article-comments -->
{{ /if }}