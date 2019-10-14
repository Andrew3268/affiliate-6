# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  if $('.willpaginate .pagination').length
    $(window).scroll ->
      url = $('.willpaginate .pagination .next_page').attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
        $('.willpaginate .pagination').text("Fetching more products...")
        $.getScript(url)
    $(window).scroll()


