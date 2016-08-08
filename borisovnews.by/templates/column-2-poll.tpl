{{*Лучшие <a title="микро камеры" target="_blank"href="http://007.dmrexpress.ru/shop/26.html">
микро камеры</a> не дорого.

<a href="http://riffsurf.com/?i=3650" target="_blank">
<img src="http://riffsurf.com/images/b/468x60.png" border="0" width="300" height="60" /></a>
*}}

<div class="block-title">Опрос</div>
<div class="poll">
<script type="text/javascript">function submitForm(){window.open ("{{$gimme->publication->site}}/?tpl=69","NewWindow","menubar=0,resizable=1,width=470,height=465");document.myform.submit();}</script>
{{ list_polls name="last" length="1" order='bynumber DESC' }}
 <p>{{ $gimme->poll->question }}</p>
<form action="" name="myform" target="NewWindow">
<input type="hidden" name="f_poll" value="1" />
<input type="hidden" name="f_poll_nr" value="{{ $gimme->poll->number }}" />
<input type="hidden" name="f_poll_language_id" value="{{ $gimme->poll->language_id }}" />
<input type="hidden" name="f_poll_mode" value="standard" />
<input type="hidden" name="tpl" value="69" />
{{ list_poll_answers }} 
<label>{{ pollanswer_edit }}{{ $gimme->pollanswer->answer }}{{ /pollanswer_edit }}</label>
{{ /list_poll_answers }}
<p class="submit"><input type="button" value="Голосовать" onClick="javascript:submitForm();return false;"/> или <a href="{{ uri options="template poll-results.tpl"}}" class="email">смотреть результаты</a></p>
</form>
{{ /list_polls }}
</div>

 Сервер изображений <a href="http://fotozavr.ru/"> бесплатный хостинг картинок изображений</a> Храни фото здесь!<br> <a href="http://demotivatorz.ru/">создать демотиватор</a> <br>Словарь медицинских терминов <a href="http://medicalbest.ru/">Минералы для детей</a> Максимально доходчиво - МедикалБЕСТ<br> присоединяйся! <a href="http://vklubeigr.ru/">обзоры игр</a> в твоем городе<br>Это очень интересно: <a href="http://ru20.ru/">новости российского интернета</a>  Регистрируйся!<br>