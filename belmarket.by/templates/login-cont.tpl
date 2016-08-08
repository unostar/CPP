{{ dynamic }}
<div class="home-column-middle">
<div class="content-middle">
<h3 class="top-title-article">Вход для подписчиков PDF-версии</h3><br/>
<div class="articlecomments">

{{ if $gimme->login_action->is_error }}
  <p>Ошибка: <font style="color: #CC0000">{{ $gimme->login_action->error_message }}</font><br /><br />
  <input type="button" value="<< Вернуться" onClick="history.back()"></p>
{{ else }}
  {{ if ! $gimme->user->logged_in }}
    {{ login_form submit_button="Вход" button_html_code="class=\"button\"" }}
    <label for="uname">Логин:</label>{{ camp_edit object="login" attribute="uname" }}
    <br/><br/>
    <label for="Password">Пароль:</label>{{camp_edit object="login" attribute="password" }}<br/>
    {{ /login_form }}
    <br/><p>Чтобы подписаться на PDF-версию, заполните <a href="{{ uri options="template subscribe-pdf.tpl" }}">форму для подписки</a>. После оплаты этой услуги, Вы можете войти под своим логином для скачивания PDF-версий газеты.</p>
  {{ else }}
    <p>Вы успешно зарегестрированы под именем <b><i>{{ $gimme->user->name }}</i></b> и теперь можете скачать PDF версию издания:</p><br />
      {{ set_section number="500" }}
      {{ list_articles length="1" }}
        {{ list_article_attachments }}
          {{ if $gimme->article->has_attachments }}
            <a href="{{ uri options="articleattachment" }}"><b>Скачать PDF версию</b></a>
          {{ /if }}
        {{ /list_article_attachments }}
      {{ /list_articles }}
      {{ set_default_section }}
    <br /><br /><a href="{{ uri options="template logout.tpl" }}"><b>Выйти</b></a>
  {{ /if }}
{{ /if }}
</div>
</div>
</div>
{{ /dynamic }}