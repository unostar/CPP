	</div><!-- .middle -->

	<footer class="footer">

		{{ include file="tpl/nav.tpl" }}

		<p class="copyright">© Свободные новости, {{ $smarty.now|date_format:"%Y" }}. Все права защищены.</p><!-- .copyright -->

		<p class="counter">
			<noindex><!--LiveInternet counter--><script type="text/javascript"><!--
			document.write("<a href='http://www.liveinternet.ru/click' "+
			"target=_blank><img src='//counter.yadro.ru/hit?t11.6;r"+
			escape(document.referrer)+((typeof(screen)=="undefined")?"":
			";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
			screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
			";"+Math.random()+
			"' alt='' title='LiveInternet: показано число просмотров за 24"+
			" часа, посетителей за 24 часа и за сегодня' "+
			"border='0' width='88' height='31'><\/a>")
			//--></script><!--/LiveInternet--></noindex>
		</p><!-- .counter -->

	</footer><!-- .footer -->

</div><!-- .wrapper -->

{{ include file="_scripts.tpl" }}

</body>
</html>