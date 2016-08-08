<section class="tabs emails">
  <ul class="tabs-labels">
    <li class="active"><h2><a><span>Абнаўленьні э-поштай</span></a></h2></li>
    <li><h2><a><span>Ліст рэдактару</span></a></h2></li>
  </ul><!-- .tabs-labels -->

  <div class="tab tab-visible">
    <p>Каб атрымліваць інфармацыю пра новыя тэксты, што выстаўляюцца на arche.by, увядзіце свой э-адрас сюды:</p>
    {{include file="arche/tpl/sendmail.tpl" type="subscription"}}
    <p>Калі Вы больш не жадаеце атрымліваць нашу рассылку, проста націсьніце кнопку</p>
    <p class="center"><a href="{{url options="template arche/tpl/sendmail.tpl"}}&type=subscription&topic=Карыстальнік жадае адпісацца" class="button sendmail_subscribe">Адпісацца</a></p>
  </div><!-- .tab -->
  <div class="tab">
    <p>Маеш, што напісаць нам, хочаш прыслаць сваё фота або відэа, ведаеш навіну?</p>
    <p class="center"><a class="button sendmail" href="{{url options="template arche/tpl/sendmail.tpl"}}&type=editorial">Ліст рэдактару</a></p>
  </div><!-- .tab -->
</section><!-- .tabs emails -->
