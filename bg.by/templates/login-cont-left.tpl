<div class="articlecomments-form">
<form name="login" method="post" action="{{ uri }}">

          <input type="hidden" value="113" name="tpl" />

          <label for="uname">Логин:</label>{{ camp_edit object="user" attribute="uname" }}
          <br/><br/>

          <label for="Password">Пароль:</label>{{ camp_edit object="user" attribute="password" }}<br/><br/>
          <label>&nbsp;</label>
          <input type="submit" name="login" class="button" value="вход для пользователя"/>

        </form><br/>
   <p>Для регистрации перейдите по этой<a href="#">ссылке</a></p>
   
</div>