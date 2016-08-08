<div class="comment article_box">
<a name="comments"></a>
{{if $gimme->article->comment_count}}
<h5>КАМЕНТАРЫ</h5>
{{list_article_comments order="byDate asc"}}
<p class="name"><a href="mailto:{{$gimme->comment->reader_email|obfuscate_email}}">{{if $gimme->comment->nickname}}{{$gimme->comment->nickname}}{{else}}Ананім{{/if}} &nbsp;&bull;&nbsp;</a> {{$gimme->comment->submit_date|camp_date_format:"%d.%m.%Y %H:%i"}}</p>
<p>{{$gimme->comment->content}}</p>
{{/list_article_comments}}
{{/if}}
{{if $gimme->article->comments_locked}}
<p><code>Далейшае каментаванне заблакавана</code></p>
{{else}}
<a name="commentsform"></a>
<h5>НОВЫ КАМЕНТАР</h5>
<div class="commentsform">
{{ if $gimme->submit_comment_action->ok }}
  {{ if $gimme->publication->moderated_comments }}
    <p><code>Ваш каментар адпраўлены для мадэрацыі</code></p>
  {{elseif $gimme->article->comments_locked}}
    <p><code>Каментары заблакаваны</code></p>
  {{else}}
    <p><code>Каментар адпраўлены</code></p>
  {{ /if }}
{{ /if }}
{{ if $gimme->submit_comment_action->is_error }}
  <p>Памылка падчас каментавання: <code>
    {{ if $gimme->submit_comment_action->error_code == "action_comment_submit_err_invalid_captcha_code" }}код CAPTCHA не адпавядае малюнку.
    {{ elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_content" }}не ўведзена змесціва каментара.
    {{ elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_email" }}не ўведзен email адпраўніка.
    {{ elseif $gimme->submit_comment_action->error_code == "action_comment_submit_err_no_captcha_code" }}не ўведзены код CAPTCHA.
    {{ else }}{{ $gimme->submit_comment_action->error_message }} ({{$gimme->submit_comment_action->error_code}})
    {{ /if }}
  </code></p>
{{ /if }}
{{ comment_form submit_button="Адправіць каментар" anchor="commentsform" button_html_code="class=\"button\"" }}
<input type="hidden" name="f_comment_subject" value="{{$gimme->article->name|strip|replace:'"':''}}" />
  <fieldset>
    <span><label>Імя</label>
      {{ camp_edit object="comment" attribute="nickname" html_code="class=\"name\"" }}</span>
    <span><label>E-mail</label>
      <input type="text" class="name email" value="nospam" size="10" maxlength="255" name="f_comment_reader_email" /></span>
    <span><label>Тэкст <sup>*</sup></label>
      {{ camp_edit object="comment" attribute="content" html_code="class=\"text\"" }}</span>
    {{ if $gimme->publication->captcha_enabled }}
    <span style="height:50px;"><label>Увядзіце код <sup>*</sup></label>{{ camp_edit object="captcha" attribute="code" html_code="class=\"captcha_code\"" }}<img src="{{captcha_image_link}}" alt="Малюнак CAPTCHA" width="170" /></span>
    {{ /if }}
  </fieldset>
{{ /comment_form }}
</div>
{{/if}}
</div>