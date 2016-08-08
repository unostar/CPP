<div class="right-1">
{{ include file="slonim/right-1-current-issue.tpl" }}
<p class="title margin-top-20">Курсы валют</p>
{{ php }}include ('/home/gsby/xml-forest/slonim-exchange.html');{{ /php }}

{{*
Цены на топливо и на жизнь задаются в первом выпуске, 600-й рубрике
в статье типа fuel_price (Цены на топливо) или
в статье типа life_price (Цены на жизнь)
заголовок статьи = название блока
*}}

{{ include file="slonim/right-1-fuel_life-prices.tpl" }}

<p class="title margin-top-20">Опрос</p>
{{ include file="slonim/right-1-poll.tpl" }}

{{ include file="slonim/right-1-adds.tpl" }}


{{* include file="slonim/right-1-indicators.tpl" *}}
</div>
{{* счетчики - в футере! лучше сделать задание, если что-то надо *}}