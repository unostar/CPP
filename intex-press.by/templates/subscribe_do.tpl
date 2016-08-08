<html>
<body bgcolor=white>
{{ if $gimme->edit_subscription_action->ok }}
	<META http-equiv="refresh" content="0;url={{ uri options="issue" }}">
{{ else }}
	{{ $gimme->edit_subscription_action->error_message }}
{{ /if }}
</body>
</html>