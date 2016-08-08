{{ include file="_html-head.tpl" }}
<body>

<div id="wrapper">

    <!-- begin header wrapper-->

    {{ include file="_header.tpl" }}

    <!-- end header wrapper -->

   <div id="content-wrapper" class="clearfix">

     <!-- begin middle content -->

 {{ if $gimme->login_action->ok }}

      {{ unset_section }}

      {{ unset_article }}

      {{ unset_topic }}

      <META http-equiv="refresh" content="3;url={{ uri options="issue" }}">

      <p style="margin-top: 5px">

Регистрация прошла успешно. Сейчас вас перенаправят на следующую

страницу.

<br /><br />

Если Вас не перенаправят, нажмите <a href="{{ uri options="issue" }}">здесь</a>.

</p>

      {{ else }}

         <p style="margin-top: 5px">Error during login: <span style="color: #CC0000"> {{ $gimme->login_action->error_message }}</span></p>

      {{ /if }}  

      <!-- end middle content -->

     <div class="section-fulldivider"><hr /></div>

   </div>

     <!-- begin footer content -->

     {{ include file="_footer.tpl" }}

     <!-- end footer content -->

</div>

</body>

</html>