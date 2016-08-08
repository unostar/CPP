<section class="feedback expandable">
	<header>
		<h3>Обратная связь</h3>
	</header>

	<div>
		<form action="/ru/page/feedback/" method="post">
			<p>
				<label>ФИО:</label>
				<input type="text" name="name" required>
			</p>
			<p>
				<label>Email:</label>
				<input type="text" name="email" required>
			</p>
			<p>
				<label>Сообщение:</label>
				<textarea name="text" cols="30" rows="10" required></textarea>
			</p>
			<p class="submit"><input type="submit" value="Отправить"></p><!-- .submit -->
		</form>
	</div>
</section><!-- .feedback -->
