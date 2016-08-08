{{ if $gimme->article->comments_enabled }}

<div id="comments">

{{ if $gimme->submit_comment_action->is_error }}
<p class="hot">Памылка падчас каментавання:
    {{ $gimme->submit_comment_action->error_message }}
</p>
{{ /if }}

{{ if $gimme->submit_comment_action->rejected }}
    <p class="hot">Каментарый адхілены!</p>
{{ /if }}

{{ if $gimme->submit_comment_action->defined }}
{{ if $gimme->publication->moderated_comments }}
    <p class="hot">Ваш каментарый адпраўлены і чакае мадэрацыі</p>
{{ /if }}
{{ /if }}

{{ if $gimme->submit_comment_action->is_error }}
    <p class="hot">{{ $gimme->submit_comment_action->error_message }}
        ({{ $gimme->submit_comment_action->error_code }})</p>
{{ /if }}

{{ if $gimme->user->blocked_from_comments }}
    <p class="hot">Гэтаму карыстачу забаронена каментаванне</p>
{{ /if }}

{{ list_article_comments order="bydate asc" }}
   {{ if $gimme->current_list->at_beginning }}<h3>Каментарыi</h3>{{ /if }}

   <div class="comment-item">
      <p class="comment-author">{{ $gimme->comment->subject }}</p>
      <p class="comment-date">({{ $gimme->comment->submit_date|camp_date_format:"%e.%m.%Y %H:%i" }})</p>
      <p>{{ $gimme->comment->content }}</p>
   </div><!-- /.comment-item -->

{{ /list_article_comments }}

   <div id="comment-form">
      <h3>Паслаць каментарый</h3>
      {{ comment_form submit_button="Паслаць камэнтарый" }}

         <div class="form-element">
            {{ camp_edit object="comment" attribute="subject" html_code=""id=\"comment-subject\"" }}
            <label for="comment-subject">Iмя</label>
         </div>

         <div class="form-element">
           {{ camp_edit object="comment" attribute="reader_email" html_code=""id=\"comment-email\"" }}
           <label for="comment-email">E-mail</label>
         </div>

         <div class="form-element">
            {{ camp_edit object="comment" attribute="content" html_code="id=\"comment-text\" cols=\"40\" rows=\"4\"" }}
         </div>
         
         {{if $gimme->publication->captcha_enabled}}<script type="text/javascript">var RecaptchaOptions={theme:'white',lang:'ru'}; </script>{{recaptcha}}<br />{{/if}}

         <div class="form-element">
            {{ /comment_form }}
            <label for="submitComment"></label>
         </div>

   </div><!-- /#comment-form -->
</div><!-- /#comments -->

{{ /if }}