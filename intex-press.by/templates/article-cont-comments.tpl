<a name="comments"></a>
{{ list_article_comments }}
  {{ if $gimme->current_list->at_beginning }}
    <div class="articlecomment-list clearfix">
      <p class="listtitle">Комментарии</p>
      <div class="articlecomment-hr"><hr /></div>
  {{ /if }}
      <div class="comment-list-date">{{ $gimme->comment->submit_date|camp_date_format:"%d %M %Y" }}<br/>{{ $gimme->comment->submit_date|camp_date_format:"%H:%i" }}</div>
      <div class="comment-list-content"><p class="title">{{ $gimme->comment->reader_email }} </p>
      <p>{{ $gimme->comment->content_real }}</p></div>
  {{ if $gimme->current_list->at_end }}
      </div>
{{ /if }}
{{ /list_article_comments }}

{{ if $gimme->submit_comment_action->ok }}

  {{ if $gimme->publication->moderated_comments }}
    <p class="comment_content"><strong>Ваши комментарии отправлены для модерации.</strong></p>
  {{ else }}
    <p class="comment_content"><strong>Ваши комментарии заблокированы</strong></p>  
  {{ /if }}

{{ /if }}
{{ if $gimme->submit_comment_action->is_error }}
<p>Ошибка в процессе комментирования:
    {{ $gimme->submit_comment_action->error_message }}
</p>
{{ /if }}

<a name="add_comment"></a>
{{ if $gimme->article->comments_enabled }}
<div class="articlecomments">
<p class="title">Послать комментарий</p>
<div class="articlecomment-hr"><hr /></div>
{{ comment_form submit_button="Отправить комментарий" anchor="add_comment" button_html_code="class=\"button\"" }}
<input type="hidden" name="IdLanguage" value="{{ $gimme->language->number }}" />
<input type="hidden" name="IdPublication" value="{{ $gimme->publication->identifier }}" />
<input type="hidden" name="NrIssue" value="{{ $gimme->issue->number }}" />
<input type="hidden" name="NrSection" value="{{ $gimme->section->number }}" />
<input type="hidden" name="NrArticle" value="{{ $gimme->article->number }}" />
<input type="hidden" name="f_comment_subject" maxlength="255" size="10" value="." class="formInputText" id="CommentSubject" />

            <label for="CommentReaderEMail">Имя:</label>
{{ camp_edit object="comment" attribute="reader_email" html_code="class=\"formInputText\" id=\"CommentReaderEMail\""}}
            <br />
            <label for="CommentContent">Комментарий:</label>
{{ camp_edit object="comment" attribute="content" html_code="id=\"CommentContent\""}} 
            <br />
{{ if $gimme->publication->captcha_enabled }}
            <label>&nbsp;</label>
                          <img src="/include/captcha/image.php" alt="captcha" /><br />
            <label for="f_captcha_code">Введите CAPTCHA код:</label>
            {{ camp_edit object="captcha" attribute="code" html_code="class=\"formInputText\" id=\"f_captcha_code\"" }}
          {{ /if }}
            <br /><br />
            <label>&nbsp;</label>

{{ /comment_form }}
</div>
{{ /if }}