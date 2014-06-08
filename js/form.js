$(function() {
	$("form").submit(function() {
    // we want to store the values from the form input box, then send via ajax below
    var name     = $('#name').attr('value');
    var email     = $('#email').attr('value');
    var msg     = $('#message').attr('value');
        $.ajax({
            dataType: "jsonp",
            url: "http://getsimpleform.com/messages/ajax?form_api_token=f95814c1ce0d9fef8217eff5bc10af14",
            data: "name="+ name +"& email="+ email +"& message=" + msg,
            success: function(){
                $('form').hide(function(){$('div#thankYou').fadeIn();});
  
            }
        });
    return false;
    });
});