# Scroll Function
$(document).ready ->
  
  # This code is executed after the DOM has been completely loaded
  $("nav a.same-page,footer a.up,article a.up").click (e) ->
    
    # If a link has been clicked, scroll the page to the link's hash target:
    $.scrollTo @hash or 0, 1500
    e.preventDefault()
    return

  return


# Form Swap Animation
$("#submit").click ->
  $("#thankYou").show "", ->

  
  # Animation complete.
  $("#contactForm").hide "", ->

  return


# Animation complete.