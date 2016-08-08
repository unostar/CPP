{{if !$gimme->submit_comment_action->defined}}
<div class="b-sendcomment" style="width:480px;height:325px;text-align:left;">
  <div class="b-bheader_black"><span>Письмо в редакцию</span></div>
  <div id="contact_form">
{{/if}}
{{if $gimme->submit_comment_action->ok}}
  {{assign var="response_message" value='<div class="b-comments_response success"><p>Сообщение отправлено.</p></div>'}}
{{elseif $gimme->submit_comment_action->is_error}}
  {{if $gimme->submit_comment_action->error_code == "action_comment_submit_err_invalid_captcha_code"}}{{assign var="captcha" value=' class="error"'}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_content"}}{{assign var="message" value=' class="error"'}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_email"}}{{assign var="email" value=' class="error"'}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_captcha_code"}}{{assign var="captcha" value=' class="error"'}}
  {{else}}{{assign var="response_message" value="<div class=\"b-comments_response error\"><p>Ошибка: `$gimme->submit_comment_action->error_message`</p></div>"}}
  {{/if}}
{{/if}}
{{if $response_message}}{{$response_message}}{{else}}
{{local}}
{{set_issue number="1"}}
{{set_section number="320"}}
{{list_articles length="1"}}
{{comment_form button_html_code="style=\"display:none;\" disabled"}}
<input type="hidden" name="f_comment_subject" value="ПИСЬМО В РЕДАКЦИЮ" />
<input type="hidden" name="f_submit_comment" value="Send" />
<table class="g-none">
  <tr>
    <td>Ваше имя:</td>
    <td colspan="2">{{camp_edit object="comment" attribute="nickname" html_code="class=\"text\""}}</td>
  </tr>
  <tr>
    <td{{$email}}>Ваш E-mail:</td>
    <td colspan="2">{{camp_edit object="comment" attribute="reader_email" html_code="class=\"text\""}}</td>
  </tr>
  <tr>
    <td{{$message}}>Текст сообщения:</td>
    <td colspan="2">{{camp_edit object="comment" attribute="content"}}</td>
  </tr>
{{if $gimme->publication->captcha_enabled}}
  <tr>
    <td{{$captcha}}>Код:</td>
    <td>{{camp_edit object="captcha" attribute="code" html_code="class=\"smalltext\""}}</td>
    <td><img id="captcha" src="{{captcha_image_link}}" alt="Картинка CAPTCHA" width="160" /></td>
  </tr>
{{/if}}
  <tr>
    <td></td>
    <td colspan="2"><input type="button" class="submit-t1" value="Отправить" /></td>
  </tr>
</table>
{{/comment_form}}
{{/list_articles}}
{{/local}}
{{/if}}
{{if !$gimme->submit_comment_action->defined}}
  </div>
</div>
{{/if}}