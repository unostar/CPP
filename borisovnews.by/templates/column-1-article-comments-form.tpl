<a name="commentsform"></a>

<div class="block-title">Послать комментарий</div>
<div class="comments clearfix">

{{ if $gimme->submit_comment_action->ok }}
  {{ if $gimme->publication->moderated_comments }}
    <p class="h3">Ваш комментарий отправлен для модерации</p>
  {{ else }}
    <p class="h3">Комментарии заблокированы</p>
  {{ /if }}
{{ /if }}

{{ if $gimme->submit_comment_action->is_error }}
  <p>Ошибка в процессе комментирования: <code>
    {{ if $gimme->submit_comment_action->error_code == "action_comment_submit_err_invalid_captcha_code" }}код CAPTCHA не соответствует картинке.
    {{ elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_content" }}не введено содержимое комментария.
    {{ elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_email" }}не введено имя отправителя.
    {{ elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_captcha_code" }}не введен код CAPTCHA.
    {{ else }}{{ $gimme->submit_comment_action->error_message }} ({{$gimme->submit_comment_action->error_code}})
    {{ /if }}
  </code></p>
{{ /if }}

{{ comment_form submit_button="Отправить комментарий" anchor="commentsform" }}
<input type="hidden" name="f_comment_subject" value="{{ $gimme->article->name }}" />
<fieldset>
<span><label>Имя:</label>
{{ camp_edit object="comment" attribute="reader_email" size="40" }}</span>
<span><label>Комментарий:</label>
{{ camp_edit object="comment" attribute="content" }}</span>
{{ if $gimme->publication->captcha_enabled }}
<span><label>&nbsp;</label><img src="{{ captcha_image_link }}" alt="CAPTCHA image" /></span>
<span><label>Введите CAPTCHA код:</label>
{{ camp_edit object="captcha" attribute="code" }}</span>
{{ /if }}
</fieldset>
{{ /comment_form }}
</div>
<hr class="section-divider" />