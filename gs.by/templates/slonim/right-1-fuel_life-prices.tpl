{{list_articles length="1" constraints="issue is 1 section is 600 type is fuel_price" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
<p class="title margin-top-20">{{$gimme->article->name}}</p>
{{/if}}
<font color="blue">АИ-80</font> — {{$gimme->article->BB}} руб.<br><br>
<font color="blue">АИ-92</font> — {{$gimme->article->AB}} руб.<br><br>
<font color="blue">АИ-95</font> — {{$gimme->article->AA}} руб.<br><br>
<font color="blue">ДТ</font> — {{$gimme->article->DT}} руб.<br><br>
<font color="blue">Газ</font> — {{$gimme->article->GAS}} руб.<br>
{{/list_articles}}

{{list_articles length="1" constraints="issue is 1 section is 600 type is life_price" order="bypublishdate desc"}}
{{if $gimme->current_list->at_beginning}}
<p class="title margin-top-20">{{$gimme->article->name}}</p>
{{/if}}
Бюджет прожиточного минимума: {{$gimme->article->min_life|number_format:0:".":" "}} руб.<br><br>
Минимальная з/п: {{$gimme->article->min_salary|number_format:0:".":" "}} руб.<br><br>
Тарифная ставка первого разряда: {{$gimme->article->flat_rate|number_format:0:".":" "}} руб.<br><br>
Базовая величина: {{$gimme->article->base_unit|number_format:0:".":" "}} руб.<br><br>
Ставка рефинансирования: {{$gimme->article->refinance_rate|number_format:0:".":" "}}%<br>
{{/list_articles}}