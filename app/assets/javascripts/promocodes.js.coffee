# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  if $('.promo_paginate .pagination').length
    $(window).scroll ->
      url = $('.promo_paginate .pagination .next_page').attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
        $('.promo_paginate .pagination').text("Fetching more products...")
        $.getScript(url)
    $(window).scroll()


