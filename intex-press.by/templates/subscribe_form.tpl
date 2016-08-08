<div class="article-content">
<div class="article clearfix">
<div class="section-title">Регистрация</div>
<div class="article-left">
<div class="article-details clearfix">

<div class="subscribe">
<form name="user" action="/ru/1/" method="post">
<input type="hidden" name="tpl" value="70" />
<input type="hidden" name="SubsType" value="paid" />
<input type="hidden" name="unitcost" value="0" />
<input type="hidden" name="unitcostalllang" value="0" />
<input type="hidden" name="UserStrAddress" value="xx" />
<input type="hidden" name="UserPostalCode" value="xx" />
<input type="hidden" name="UserState" value="xx" />
<input type="hidden" name="UserCountryCode" value="YU" />
<input type="hidden" name="UserPhone" value="xx" />
<input type="hidden" name="UserFax" value="xx" />
<label for="UserName">Имя:</label>
<input type="text" name="UserName" size="50" maxlength="255" id="UserName" /><br/>
<label for="UserTitle">Обращение:</label>
<select name="UserTitle" id="UserTitle">
	<option value="Mr.">Г-н</option>
	<option value="Mrs.">Г-жа</option>
	<option value="Dr.">Уважаемый(ая)</option>
</select><br/>
<label for="-">Пол:</label>
<label for="Male" class="radio">
<input type="radio" name="UserGender" value="M" id="Male" />Мужчина</label> 
<label for="Female" class="radio">
<input type="radio" name="UserGender" value="F" id="Female" />Женщина</label><br/>
<label for="UserUName">Имя пользователя:</label>
<input type="text" name="UserUName" size="50" maxlength="70" id="UserUName" /><br/>
<label for="UserPassword">Пароль:</label>
<input type="password" name="UserPassword" size="32" maxlength="32" id="UserPassword" /><br/>
<label for="UserPasswordAgain">Пароль еще раз:</label>
<input type="password" name="UserPasswordAgain" size="32" maxlength="32" id="UserPasswordAgain" /><br/>
<label for="UserEMail">E-Mail:</label>
<input type="text" name="UserEMail" size="50" maxlength="255" id="UserEMail" /><br/>
<label for="UserAge">Возраст:</label>
<select name="UserAge" id="UserAge">
	<option value="0-17">0-17</option>
	<option value="18-24">18-24</option>
	<option value="25-39">25-39</option>
	<option value="40-49">40-49</option>
	<option value="50-65">50-65</option>
	<option value="65-">65 or over</option>
</select><br/>
<label for="UserCity">Город:</label>
<input type="text" name="UserCity" size="50" maxlength="100" id="UserCity" /><br/>
<label for="useradd">&nbsp;</label>
<input type="submit" name="useradd" value="Отправить"id="useradd" />
</form>
</div>
</div>
</div>
<!-- begin article right column-->
{{ include file="article-cont-right.tpl" }}
<!-- end article right column-->
</div>
</div>