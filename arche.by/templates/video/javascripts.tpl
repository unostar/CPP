<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-4e41bd05678d09e5"></script>
<script type="text/javascript">
var disqus_shortname = 'archeby';
(function () {
  var s = document.createElement('script'); s.async = true;
  s.type = 'text/javascript';
  s.src = 'http://disqus.com/forums/' + disqus_shortname + '/count.js';
  (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
}());
</script>

{{if $gimme->template->name == "video/article.tpl"}}
{{set_default_article}}
<script src="/templates/video/player/flowplayer-3.2.10.min.js"></script>
<script type="text/javascript">
PDRTJS_settings_5405311 = {
  "id" : "5405311",
  "unique_id" : "{{$gimme->article->number}}",
  "title" : "{{$gimme->article->name|escape}}",
  "permalink" : "http://{{$gimme->publication->site}}/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}"
};
</script>
<script type="text/javascript" src="http://i.polldaddy.com/ratings/rating.js"></script>
<script src="http://platform.twitter.com/widgets.js" type="text/javascript"></script>
<script src="http://connect.facebook.net/be_BY/all.js#appId=196779940381384&amp;xfbml=1"></script>
<script type="text/javascript" src="http://vkontakte.ru/js/api/share.js?11"></script>
<script type="text/javascript">
document.getElementById('vk_share_button').innerHTML = VK.Share.button(false,{
  type: "round",
  text: "Рэкамэндаваць",
  url: '[http://{{$gimme->publication->site}}/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}]',
  title: '{{$gimme->article->name|escape}}',
  image: '[{{url options="image 1"}}]',
  noparse: true
});
</script>
<script type="text/javascript">
var disqus_shortname = 'archeby';
var disqus_identifier = 'videoarche-{{$gimme->article->number}}';
var disqus_url = 'http://{{$gimme->publication->site}}/{{$gimme->language->code}}/channel/{{$gimme->section->url_name}}/{{$gimme->article->number}}';
(function() {
  var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
  dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
  (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
})();
</script>
{{/if}}


<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-30204555-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>