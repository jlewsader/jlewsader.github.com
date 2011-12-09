// Scroll Function
$(document).ready(function(){
	/* This code is executed after the DOM has been completely loaded */
	
	$('nav a.same-page,footer a.up,article a.up').click(function(e){
										  
		// If a link has been clicked, scroll the page to the link's hash target:
		
		$.scrollTo( this.hash || 0, 1500);
		e.preventDefault();
	});

});

// Form Swap Animation
$('#submit').click(function() {
  $('#thankYou').show('', function() {
    // Animation complete.
  });$('#contactForm').hide('', function() {
    // Animation complete.
  });
});