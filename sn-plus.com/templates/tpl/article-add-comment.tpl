<div class="add-comment block" id="add-comment">
	<header>
		<h3>Добавить комментарий</h3>
	</header>

{{ if $gimme->submit_comment_action->is_error }}
	<p class="comment-error">{{ $gimme->submit_comment_action->error_message }} (код ошибки: {{ $gimme->submit_comment_action->error_code }})</p>
{{ /if }}

	{{ comment_form submit_button="Опубликовать" }}

		<input type="hidden" name="f_comment_subject" value="Комментарий с сайта">
		<input type="hidden" name="f_comment_reader_email" value="nomail@nomail.com">

		<p>
			<label>Имя:</label>
			{{ camp_edit object="comment" attribute="nickname" }}
		</p>

		<p>{{ camp_edit object="comment" attribute="content" }}</p>

		<p class="submit">{{ /comment_form }}</p>

</div><!-- .add-comment -->
