{{ include file="_html-head.tpl" }}
<body>

<div id="wrapper">

    <!-- begin header wrapper-->

    {{ include file="_header.tpl" }}

    <!-- end header wrapper -->

   <div id="content-wrapper" class="clearfix">

     <!-- begin middle content -->



{{ if $gimme->edit_user_action->defined }}

	{{ if $gimme->edit_user_action->ok }}

{{ include file="subscribe_done.tpl" }}

	{{ else }}

	<p>There was an error on user info: {{ $gimme->edit_user_action->error_message }}

{{ include file="subscribe_form.tpl" }}

	{{ /if }}

{{ else }}

{{ include file="subscribe_form.tpl" }}

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