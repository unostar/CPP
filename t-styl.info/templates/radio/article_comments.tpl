{{ if $gimme->article->comments_enabled }}
<div id="comments_form">
     <div class="comments-box">
            <a name="add_comment"></a>
{{ list_article_comments order="bydate desc"}}
{{ if $gimme->current_list->at_beginning }}
      <p class="comments-title">Каментары 
{{ assign var="flag1" value="0" }}
      {{ if $gimme->current_list->at_beginning }} 
        ({{ $gimme->current_list->count }})
        {{ assign var="flag1" value="1" }}
        {{ /if }}
        {{ if $flag1 == "0" }}(0){{ /if }}</p>
{{ /if }}
{{ /list_article_comments }}

{{ list_article_comments order="bydate asc"}}
    <p>{{ $gimme->comment->reader_email }} ({{ $gimme->comment->submit_date|camp_date_format:"%d %M %Y, %H:%i" }}): <span>{{ $gimme->comment->content }}</span></p>
{{ /list_article_comments }}

{{ if $gimme->submit_comment_action->ok }}

  {{ if $gimme->publication->moderated_comments }}
    {{assign var="response_message" value='<p><strong>Ваш каментар накіраваны для мадэрацыі</strong></p>'}}
  {{elseif $gimme->article->comments_locked}}
    {{assign var="response_message" value='<p><strong>Ваш каментар заблакiраваны</strong></p>'}}
  {{else}}
    {{assign var="response_message" value='<p><strong style="color:#6DAB49">Каментар адпраўлены.</strong></p>'}}
  {{/if}}

{{elseif $gimme->submit_comment_action->is_error}}
  {{if $gimme->submit_comment_action->error_code == "action_comment_submit_err_invalid_captcha_code"}}{{assign var="captcha" value="error"}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_content"}}{{assign var="message" value="error"}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_email"}}{{assign var="email" value="error"}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_captcha_code"}}{{assign var="captcha" value="error"}}
  {{elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_not_enabled"}}{{assign var="response_message" value='<p>Каментары заблакаваны.</p>'}}
  {{else}}{{assign var="response_message" value="<p><strong>Памылка: `$gimme->submit_comment_action->error_message`</strong></p>"}}
  {{/if}}
{{/if}}
</div>


{{if $response_message}}
<div class="comments-box">
{{$response_message}}
</div>
{{else}}     

     <div class="comments-box">
     <p class="comments-title">Даслаць каментар</p>
    {{* comment_form submit_button="&nbsp;" anchor="comments" button_html_code="class=\"button\"" *}}
    
    <form id="" method="post" action="{{uripath}}?tpl=radio/article_comments.tpl" name="submit_comment"> 
    <input type="hidden" name="f_comment_subject" value="{{$gimme->article->name|strip|replace:'"':''}}" />
    <input type="hidden" name="f_submit_comment" value="Даслаць каментар" />    
    
       <fieldset>
       <label class="{{$email}}" for="CommentReaderEMail" accesskey="n">Iмя:</label>
       <input type="text" value="{{$smarty.post.f_comment_reader_email}}" name="f_comment_reader_email" class="formInputText" id="CommentReaderEMail" /><br /><br />
       <label class="{{$message}}" for="CommentContent">Каментар:</label>
       <textarea id="CommentContent" name="f_comment_content">{{$smarty.post.f_comment_content}}</textarea><br />
  {{if $gimme->publication->captcha_enabled}}
  <label for="captcha">Код:</label>
  <img src="{{captcha_image_link}}" alt="captcha" id="captcha" /><br />
  <label class="{{$captcha}}" for="f_captcha_code">Увядзiце код:</label>
  <input type="text" name="f_captcha_code" class="formInputText" />
  {{/if}}<br />
      </fieldset>
<input type="button" class="button" id="article_comment_submit" name="f_submit_comment" />
  </form>
     </div>

{{ /if }}
</div>
{{ /if }}