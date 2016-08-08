{{if $gimme->submit_comment_action->ok}}
  {{if $gimme->publication->moderated_comments}}
    {{assign var="response_message" value='<div class="ui-state-highlight"><p><span class="ui-icon ui-icon-circle-check"></span> Ваш каментар адпраўлены для мадэрацыі. Пасля праверкі ён з\'явіцца на сайце.</p></div>'}}
  {{elseif $gimme->article->comments_locked}}
    {{assign var="response_message" value='<div class="ui-state-error"><p><span class="ui-icon ui-icon-alert"></span> Каментары заблакаваны.</p></div>'}}
  {{else}}
    {{assign var="response_message" value='<div class="ui-state-highlight"><p><span class="ui-icon ui-icon-circle-check"></span> Каментар адпраўлены.</p></div>'}}
  {{/if}}
{{elseif $gimme->submit_comment_action->is_error}}
  {{if $gimme->submit_comment_action->error_code == "action_comment_submit_err_invalid_captcha_code"}}{{assign var="captcha" value=" error"}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_content"}}{{assign var="message" value=" error"}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_email"}}{{assign var="email" value=" error"}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_captcha_code"}}{{assign var="captcha" value=" error"}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_not_enabled"}}{{assign var="response_message" value='<div class="ui-state-error"><p><span class="ui-icon ui-icon-alert"></span> Каментары заблакаваны.</p></div>'}}
  {{else}}{{assign var="response_message" value="<div class=\"ui-state-error\"><p><span class=\"ui-icon ui-icon-alert\"></span><strong> Памылка: </strong>`$gimme->submit_comment_action->error_message`</p></div>"}}
  {{/if}}
{{/if}}
{{if $response_message}}{{$response_message}}{{else}}
<form class="b-addcomment" method="post" action="{{uripath}}?tpl=article-comments-form.tpl" name="submit_comment">
<input type="hidden" name="f_comment_subject" value="Комментарий" />
<input type="hidden" name="f_submit_comment" value="Отправить" />
<fieldset>
  <legend>ОТПРАВИТЬ КОММЕНТАРИЙ</legend>
  <div class="b-addcomment_item"><label>Имя:</label><input type="text" value="{{$smarty.post.f_comment_nickname}}" name="f_comment_nickname" required="required" /></div>
  {{* <div class="b-addcomment_item{{$email}}"><label>E-mail:</label><input type="text" value="{{$smarty.post.f_comment_reader_email}}" name="f_comment_reader_email" /></div>*}}
  {{php}}
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {$ip=$_SERVER['HTTP_CLIENT_IP'];}
    elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {$ip=$_SERVER['HTTP_X_FORWARDED_FOR'];}
    else {$ip=$_SERVER['REMOTE_ADDR'];}
    echo ('<input type="hidden" value="'.$ip.'" name="f_comment_reader_email" />');
  {{/php}}
  <div class="b-addcomment_item{{$message}}"><label>Текст:</label><textarea cols="1" rows="1" name="f_comment_content" required="required">{{$smarty.post.f_comment_content}}</textarea></div>
{{if $gimme->publication->captcha_enabled}}
  <div class="b-addcomment_item{{$captcha}}"><label>Код:</label><div class="g-clean"><span><img id="captcha" src="{{captcha_image_link}}" alt="Карцінка CAPTCHA" width="120" height="36" /></span><input type="text" name="f_captcha_code" required="required" /></div></div>
{{/if}}
  <div><input type="button" class="button-greent1" value="ОТПРАВИТЬ" /></div>
</fieldset>
</form>
{{/if}}
