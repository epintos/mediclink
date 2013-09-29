jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()

  tabs = $('#blook_works li a')
  $(tabs).each ->
    $(window).resize()