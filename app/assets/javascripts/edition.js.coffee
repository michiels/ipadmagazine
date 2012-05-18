# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->

  updateSidebar()
  
  $('#add_title_button').click ->
    $('.title_object').show()
    $('.title_object').draggable()
    return false
  
  $('#add_page_link').click ->
    $('.pages_area').append('<div class="page page_3"></div>')
    el = $('<div class="page" data-page="3"><div class="page_title">New page</div></div>')
    el.click ->
      page_number = $(this).attr('data-page')
      scroll_to = page_number * 768
      $('.edition_canvas').animate({scrollLeft: scroll_to })
    $(this).before(el)
  
  $('#add_text_block').click ->
    $('.text_block_object').show()
    return false
  
  $('.sidebar #first_page').click ->
    $('.edition_canvas').animate({scrollLeft: 0}, 500)
  
  $('.sidebar #second_page').click ->
    $('.edition_canvas').animate({scrollLeft: 768}, 500)

updateSidebar = () ->
  $('.sidebar').css({height: $(window).height()});