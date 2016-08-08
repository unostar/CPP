{{ if $gimme->article->comments_enabled }}
<a name="comments"></a>
{{ list_article_comments order="bydate desc"}}
{{ if $gimme->current_list->at_beginning }}
        <div class="details" style="width:655px;">
          <div class="title">Комментарии</div>
          <div class="meta"></div>
        </div>
{{ /if }} 
        <div class="articlecomments">
          <p class="comment_author">{{ $gimme->comment->reader_email }}</p>
          <p class="comment_date">{{ $gimme->comment->submit_date|camp_date_format:"%e %M %Y, %H:%i" }}</p>
          <p class="comment_content">{{ $gimme->comment->content }}</p>
        </div>
{{ /list_article_comments }}
        <div class="details" style="width:655px; clear:right;margin-bottom:0px;">
          <div class="title">Комментарии</div>
          <div class="meta"><span>Послать комментарий</span>  <img alt="spacer" src="/templates/slonim/images/footer-spacer.gif">  <span><a href="#comments">Читать комментарии</a></span></div>
        </div>
        <div class="articlecomments-form">
{{ if $gimme->submit_comment_action->ok }}
<p>
  {{ if $gimme->publication->moderated_comments }}
    <p class="comment_content"><strong>Ваши комментарии отправлены для модерации.</strong></p>
  {{ else }}
    <p class="comment_content"><strong>Ваши комментарии заблокированы</strong></p>  
  {{ /if }}
</p>
{{ /if }}
{{ if $gimme->submit_comment_action->is_error }}
<p>Ошибка в процессе комментирования:
    {{ $gimme->submit_comment_action->error_message }}
</p>
{{ /if }}
{{ comment_form submit_button="Отправить комментарий" anchor="comments" button_html_code="class=\"button\"" }}
<input type="hidden" name="IdLanguage" value="{{ $gimme->language->number }}" />
<input type="hidden" name="IdPublication" value="{{ $gimme->publication->identifier }}" />
<input type="hidden" name="NrIssue" value="{{ $gimme->issue->number }}" />
<input type="hidden" name="NrSection" value="{{ $gimme->section->number }}" />
<input type="hidden" name="NrArticle" value="{{ $gimme->article->number }}" />
            <label for="CommentReaderEMail">Имя:</label>
{{ camp_edit object="comment" attribute="reader_email" html_code="class=\"formInputText\" id=\"CommentReaderEMail\" size=\"60\""}}<br /><br />
            <label for="CommentSubject">Тема:</label>
            {{ camp_edit object="comment" attribute="subject" html_code="class=\"formInputText\" id=\"CommentSubject\""}}<br /><br />
            <label for="CommentContent">Комментарий:</label>
            {{ camp_edit object="comment" attribute="content" html_code="id=\"CommentContent\""}} 
<div class="captcha-floater clearfix">
          {{ if $gimme->publication->captcha_enabled }}
              <img src="/include/captcha/image.php">
 <label for="f_captcha_code">Введите CAPTCHA код:</label><br/><br/>
             {{ camp_edit object="captcha" attribute="code" html_code="class=\"captcha\" id=\"f_captcha_code\"" }}
          {{ /if }}
</div>
            <br />
            <br />
            {{ /comment_form }}
        </div>

{{ /if }}