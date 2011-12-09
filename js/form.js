$(function() {
	$("form").submit(function() {  
    // we want to store the values from the form input box, then send via ajax below  
    var name     = $('#name').attr('value');  
    var email     = $('#email').attr('value');  
    var msg     = $('#message').attr('value');  
        $.ajax({  
            type: "POST",  
            url: "/gdform.php",  
            data: "name="+ name +"& email="+ email +"& message=" + msg,  
            success: function(){  
                $('form').hide(function(){$('div#thankYou').fadeIn();});  
  
            }  
        });  
    return false;  
    });  
});