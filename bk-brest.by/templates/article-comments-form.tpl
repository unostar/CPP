{{if $gimme->submit_comment_action->ok}}
  {{if $gimme->publication->moderated_comments}}
    {{assign var="response_message" value='<div class="b-comments_response success"><p>Ваш комментарий отправлен для модерации. После проверки он появится на сайте.</p></div>'}}
  {{elseif $gimme->article->comments_locked}}
    {{assign var="response_message" value='<div class="b-comments_response error"><p>Комментарии заблокированы.</p></div>'}}
  {{else}}
    {{assign var="response_message" value='<div class="b-comments_response success"><p>Комментарий отправлен.</p></div>'}}
  {{/if}}
{{elseif $gimme->submit_comment_action->is_error}}
  {{if $gimme->submit_comment_action->error_code == "action_comment_submit_err_invalid_captcha_code"}}{{assign var="captcha" value=' class="error"'}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_content"}}{{assign var="message" value=' class="error"'}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_email"}}{{assign var="email" value=' class="error"'}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_captcha_code"}}{{assign var="captcha" value=' class="error"'}}
  {{else}}{{assign var="response_message" value="<div class=\"b-comments_response error\"><p>Ошибка: `$gimme->submit_comment_action->error_message`</p></div>"}}
  {{/if}}
{{/if}}
{{if $response_message}}{{$response_message}}{{else}}
<form method="post" action="{{uripath}}?tpl=article-comments-form.tpl" name="submit_comment">
<input type="hidden" name="f_comment_subject" value="Комментарий" />
<input type="hidden" name="f_submit_comment" value="Отправить" />
<table class="g-none">
  <tr>
    <td{{$email}}>Имя:</td>
    <td colspan="2"><input type="text" class="text" value="{{$smarty.post.f_comment_reader_email}}" size="10" maxlength="100" name="f_comment_reader_email" /></td>
  </tr>
  <tr>
    <td{{$message}}>Текст:</td>
    <td colspan="2"><textarea rows="4" cols="40" name="f_comment_content">{{$smarty.post.f_comment_content}}</textarea></td>
  </tr>
{{if $gimme->publication->captcha_enabled}}
  <tr>
    <td{{$captcha}}>Код:</td>
    <td><input type="text" class="smalltext" maxlength="10" size="10" name="f_captcha_code" /></td>
    <td><img id="captcha" src="{{captcha_image_link}}" alt="Картинка CAPTCHA" width="160" /></td>
  </tr>
{{/if}}
  <tr>
    <td></td>
    <td colspan="2"><input type="button" class="submit-t1" value="Отправить" /></td>
  </tr>
</table>
</form>
{{/if}}
