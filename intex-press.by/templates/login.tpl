{{ include file="_html-head.tpl" }}
<body>

<div id="wrapper">

    <!-- begin header wrapper-->

    {{ include file="_header.tpl" }}

    <!-- end header wrapper -->

   <div id="content-wrapper" class="clearfix">

     <!-- begin middle content -->



<div class="article-content">

<div class="article clearfix">

<div class="section-title">Вход</div>

<div class="article-left">

<div class="article-details clearfix">

<div class="subscribe">

{{ if ! $gimme->user->logged_in }}

        <form name="login" method="post" action="{{ uri }}">

          <input type="hidden" value="73" name="tpl" />

          <input type="hidden" value="login" name="login" />

          <label for="Username">Имя:</label>

          <input type="text" name="LoginUName" id="Username"/><br/>

          <label for="Password">Пароль:</label>

          <input type="password" name="LoginPassword" id="Password"/>

          <input type="submit" name="login" class="button" value="Отправить"/>

        </form>

        <a href="{{ uri options="template subscribe.tpl" }}">Зарегистрироваться</a>

{{ /if }}

</div>

</div>

</div>



<!-- begin article right column-->

{{ include file="article-cont-right.tpl" }}

<!-- end article right column-->

</div>

</div>   

      <!-- end middle content -->

     <div class="section-fulldivider"><hr /></div>

   </div>

     <!-- begin footer content -->

     {{ include file="_footer.tpl" }}

     <!-- end footer content -->

</div>

</body>

</html>