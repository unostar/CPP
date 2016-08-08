{{ dynamic }}
{{ if $gimme->article->comments_enabled }}

{{list_article_comments order="bydate asc"}}
  {{ if $gimme->current_list->at_beginning }}
    <div class="articlecomment-list clearfix">
    <h2 class="comments">КОММЕНТАРИИ ({{$gimme->current_list->count}})</h2>
  {{/if}}
  <div class="comment-list-content">
    <p class="title">{{$gimme->comment->reader_email}}:</p>
    <p class="data">{{$gimme->comment->submit_date|camp_date_format:"%e %M %Y, %H:%i"}}</p>
    <p>{{$gimme->comment->content}}</p>
  </div><!-- /.comment-list-content -->
  {{ if $gimme->current_list->at_end }}
    </div><!-- articlecomment-list clearfix -->
  {{ /if }}
{{ /list_article_comments }}

<div class="articlecomments"><a name="comments"></a>

{{if $gimme->submit_comment_action->ok}}
<p>
  {{if $gimme->publication->moderated_comments}}
    <p class="comment_content"><strong>Ваши комментарии отправлены для модерации.</strong></p>
  {{else}}
    <p class="comment_content"><strong>Комментарии заблокированы.</strong></p>
  {{/if}}
</p>
{{/if}}

{{if $gimme->submit_comment_action->is_error}}
  <p>Ошибка в процессе комментирования: {{$gimme->submit_comment_action->error_message}}</p>
{{/if}}

<h2 class="comments">ОТПРАВИТЬ КОММЕНТАРИЙ</h2>
{{comment_form submit_button="Отправить комментарий" anchor="comments" button_html_code="class=\"button\""}}
<input type="hidden" name="IdLanguage" value="{{$gimme->language->number}}" />
<input type="hidden" name="IdPublication" value="{{$gimme->publication->identifier}}" />
<input type="hidden" name="NrIssue" value="{{$gimme->issue->number}}" />
<input type="hidden" name="NrSection" value="{{$gimme->section->number}}" />
<input type="hidden" name="NrArticle" value="{{$gimme->article->number}}" />
<fieldset>
<label accesskey="n" for="CommentReaderEMail"> Имя: </label>
  {{camp_edit object="comment" attribute="reader_email" html_code="class=\"formInputText\" id=\"CommentReaderEMail\" size=\"60\""}}<br />
<label for="CommentSubject"> Тема: </label>
  {{camp_edit object="comment" attribute="subject" html_code="class=\"formInputText\" id=\"CommentSubject\""}}<br />
<label for="CommentContent"> Комментарий: </label>
  {{camp_edit object="comment" attribute="content" html_code="id=\"CommentContent\" onkeyup=\"textLimit(this.form.CommentContent, 500)\""}}<br />
{{if $gimme->publication->captcha_enabled}}
<label for="f_captcha_code"> CAPTCHA изображение: </label>
{{ recaptcha }} 
{{ /if }}
</fieldset>
{{/comment_form}}
<p class="comment_content"><strong>* Все поля обязательны для заполнения</strong></p>

</div><!-- /.articlecomments -->
{{ /if }}
{{ /dynamic }}