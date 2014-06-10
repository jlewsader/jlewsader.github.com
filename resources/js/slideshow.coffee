$(document).ready ->
  
  # Remove scrollbar in JS
  
  # Wrap all .slides with #slideInner div
  
  # Float left to display horizontally, readjust .slides width
  
  # Set #slideInner width equal to total width of all slides
  
  # Insert controls in the DOM
  
  # Hide left arrow control on first load
  
  # Create event listeners for .controls clicks
  
  # Determine new position
  
  # Hide / show controls
  
  # Move slideInner using margin-left
  
  # manageControls: Hides and Shows controls depending on currentPosition
  manageControls = (position) ->
    
    # Hide left arrow if position is first slide
    if position is 0
      $("#leftControl").hide()
    else
      $("#leftControl").show()
    
    # Hide right arrow if position is last slide
    if position is numberOfSlides - 1
      $("#rightControl").hide()
    else
      $("#rightControl").show()
    return
  currentPosition = 0
  slideWidth = 560
  slides = $(".slide")
  numberOfSlides = slides.length
  $("#slidesContainer").css "overflow", "hidden"
  slides.wrapAll("<div id=\"slideInner\"></div>").css
    float: "left"
    width: slideWidth

  $("#slideInner").css "width", slideWidth * numberOfSlides
  $("#slideshow").prepend("<span class=\"control\" id=\"leftControl\">Clicking moves left</span>").append "<span class=\"control\" id=\"rightControl\">Clicking moves right</span>"
  manageControls currentPosition
  $(".control").bind "click", ->
    currentPosition = (if ($(this).attr("id") is "rightControl") then currentPosition + 1 else currentPosition - 1)
    manageControls currentPosition
    $("#slideInner").animate marginLeft: slideWidth * (-currentPosition)
    return

  return
