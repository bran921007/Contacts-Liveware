var url = "https://blazing-fire-1682.firebaseio.com/";
      var fb = new Firebase(url);
      $("#user").hide();

$(document).ready(function() {

  $("#loginSubmit").submit(function(event) {
     
      /* stop form from submitting normally */
      event.preventDefault(); 
      var email = $("#email").val();
      var password = $("#password").val();
      

               fb.authWithPassword({
        email    : email,
        password : password
      }, function(error, authData) {
        if (error === null) {
          window.location.href = "http://php-laputaostia.rhcloud.com/1.html"
        } else {
          alert("Error user");
        }
      });

          

    });

  });

  $("#email").change(function(){
    document.getElementById('avatar').src = "http://php-laputaostia.rhcloud.com/assets/img/profiles/ulises_avatar.png";
    $("#email").hide();
    $("#user").text("Ulises Feliz");
    $("#user").show();
    
  });
