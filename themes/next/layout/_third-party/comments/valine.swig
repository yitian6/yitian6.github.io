{%- set valine_uri = '//cdn.jsdelivr.net/gh/pengqi/someFiles/Valine.min145.js' %}

<script>
NexT.utils.loadComments(document.querySelector('#valine-comments'), () => {
  NexT.utils.getScript('{{ valine_uri }}', () => {
    var GUEST = ['nick', 'mail', 'link'];
    var guest = '{{ theme.valine.guest_info }}';
    guest = guest.split(',').filter(item => {
      return GUEST.includes(item);
    });
    new Valine({
      el         : '#valine-comments',
      verify     : {{ theme.valine.verify }},
      notify     : {{ theme.valine.notify }},
      appId      : '{{ theme.valine.appid }}',
      appKey     : '{{ theme.valine.appkey }}',
      placeholder: {{ theme.valine.placeholder | json }},
      avatar     : '{{ theme.valine.avatar }}',
      meta       : guest,
      pageSize   : '{{ theme.valine.pageSize }}' || 10,
      visitor    : {{ theme.valine.visitor }},
      lang       : '{{ theme.valine.language }}' || 'zh-cn',
      path       : location.pathname,
      recordIP   : {{ theme.valine.recordIP }},
      serverURLs : '{{ theme.valine.serverURLs }}'
    });
  }, window.Valine);
});
</script>

// 一言
<script src="https://sdk.jinrishici.com/v2/browser/jinrishici.js" charset="utf-8"></script> <script type="text/javascript"> jinrishici.load(function(result) { var jrsc_plac = result.data.content + "\n「" + result.data.origin.title + "」" + result.data.origin.dynasty + " · " + result.data.origin.author document.getElementById("veditor").setAttribute("placeholder",jrsc_plac); }); </script>


