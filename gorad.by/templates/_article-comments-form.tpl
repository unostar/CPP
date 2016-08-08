{{if $gimme->submit_comment_action->ok}}
  {{if $gimme->publication->moderated_comments}}
    {{assign var="response_message" value='<div class="notice ui-state-error ui-corner-all"><p><span class="ui-icon ui-icon-circle-check"></span> Ваш каментар адпраўлены для мадэрацыі. Пасля праверкі ён з\'явіцца на сайце.</p></div>'}}
  {{elseif $gimme->article->comments_locked}}
    {{assign var="response_message" value='<div class="notice ui-state-highlight ui-corner-all"><p><span class="ui-icon ui-icon-alert"></span> Каментары заблакаваны.</p></div>'}}
  {{else}}
    {{assign var="response_message" value='<div class="notice ui-state-error ui-corner-all post_this"><p><span class="ui-icon ui-icon-circle-check"></span> Каментар адпраўлены.</p></div>'}}
  {{/if}}
{{elseif $gimme->submit_comment_action->is_error}}
  {{if $gimme->submit_comment_action->error_code == "action_comment_submit_err_invalid_captcha_code"}}{{assign var="captcha" value="error"}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_content"}}{{assign var="message" value="error"}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_email"}}{{assign var="name" value=" error"}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_captcha_code"}}{{assign var="captcha" value=" error"}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_not_enabled"}}{{assign var="response_message" value='<div class="notice ui-state-highlight ui-corner-all"><p><span class="ui-icon ui-icon-alert"></span> Каментары заблакаваны.</p></div>'}}
  {{else}}{{assign var="response_message" value="<div class=\"notice ui-state-highlight ui-corner-all\"><p><span class=\"ui-icon ui-icon-alert\"></span><strong> Памылка: </strong>`$gimme->submit_comment_action->error_message`</p></div>"}}
  {{/if}}
{{/if}}


{{if $response_message}}{{$response_message}}{{else}}
<div id="comments_form" class="c-newsmain">
<a name="comments-form"></a>
<h3 class="c-newsmain_header">Вашы меркаванні:</h3>
<div class="c-commentsform">
<form class="f-comments" method="post" action="{{uripath}}" name="submit_comment">
<input type="hidden" name="f_comment_subject" value="Каментар" />
<input type="hidden" name="f_submit_comment" value="Адправіць каментар" />
  <div class="f-comments-textrea-w {{$message}}"><textarea cols="1" rows="1" name="f_comment_content">{{$smarty.post.f_comment_content}}</textarea></div>
  <div class="g-clean">
    <div class="g-left {{$name}}"><label>Імя: </label> <input type="text" class="text" value="{{$smarty.post.f_comment_reader_email}}" name="f_comment_reader_email" /></div>
{{if $gimme->publication->captcha_enabled}}
    <div class="g-left {{$captcha}}"><label>Код: </label> <img id="captcha" src="{{captcha_image_link}}" alt="Карцінка CAPTCHA" width="200" height="65" /></div>
    <div class="g-right {{$captcha}}"><input type="text" class="text" name="f_captcha_code" /></div>
{{/if}}
    <div class="f-comments-submit-w"><a class="button-main"><span class="button-main-i">Адправіць каментар</span></a></div>
  </div>
</form>
</div>
</div>
{{/if}}
