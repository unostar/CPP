<div class="article-comments"><a name="add_comment"></a>
{{if $gimme->submit_comment_action->ok}}
  {{if $gimme->publication->moderated_comments}}
    {{assign var="response_message" value='<h3 class="comment-title" style="color:#6DAB49">Ваш каментар накіраваны для мадэрацыі</h3>'}}
  {{elseif $gimme->article->comments_locked}}
    {{assign var="response_message" value='<h3 class="comment-title">Каментары заблакаваны.</h3>'}}
  {{else}}
    {{assign var="response_message" value='<h3 class="comment-title" style="color:#6DAB49">Каментар адпраўлены.</h3>'}}
  {{/if}}
{{elseif $gimme->submit_comment_action->is_error}}
  {{if $gimme->submit_comment_action->error_code == "action_comment_submit_err_invalid_captcha_code"}}{{assign var="captcha" value="error"}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_content"}}{{assign var="message" value="error"}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_email"}}{{assign var="email" value="error"}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_captcha_code"}}{{assign var="captcha" value="error"}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_not_enabled"}}{{assign var="response_message" value='<h3 class="comment-title">Каментары заблакаваны.</h3>'}}
  {{else}}{{assign var="response_message" value="<h3 class=\"comment-title\">Памылка: `$gimme->submit_comment_action->error_message`</h3>"}}
  {{/if}}
{{/if}}
{{if $response_message}}{{$response_message}}<br /><br />{{else}}
  <h3 class="comment-title">Даслаць каментар</h3>
  <form method="post" action="{{uripath}}?tpl=newspaper/article-comments-form.tpl" name="submit_comment">
  <input type="hidden" name="f_comment_subject" value="{{$gimme->article->name|strip|replace:'"':''}}" />
  <input type="hidden" name="f_submit_comment" value="АДПРАВІЦЬ" />
  <label class="{{$email}}" for="CommentReaderEMail">Iмя:</label>
  <input type="text" value="{{$smarty.post.f_comment_reader_email}}" name="f_comment_reader_email" class="formInputText" id="CommentReaderEMail" /><br />
  <label class="{{$message}}" for="CommentContent">Каментар:</label>
  <textarea id="CommentContent" name="f_comment_content">{{$smarty.post.f_comment_content}}</textarea><br />
  {{if $gimme->publication->captcha_enabled}}
  <label for="captcha">Код:</label>
  {{*<img src="{{captcha_image_link}}" alt="captcha" id="captcha" /><br />
  <label class="{{$captcha}}" for="f_captcha_code">Напiшыце код:</label>
  <input type="text" name="f_captcha_code" class="formInputText" />*}}
  <script type="text/javascript">var RecaptchaOptions = { custom_translations: { instructions_visual: "Упішыце гэтыя два словы:" }, theme: 'white' };</script>{{recaptcha}}
  {{/if}}
  <br /><sub style="font-size:11px;color:#666">
  * Усе палi абавязковыя для запаўнення.<br />
  ** Рашэнне аб публікацыі каментароў прымае рэдакцыя. Каментары, якія ўтрымліваюць некарэктныя выказванні і абразы гонару асобы не публікуюцца.
  </sub><br /><br />
  <label>&nbsp;</label>
  <input type="button" class="button" id="article_comment_submit" name="f_submit_comment" />
  </form>
{{/if}}
</div>
