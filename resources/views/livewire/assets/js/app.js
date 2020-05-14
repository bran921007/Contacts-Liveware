$(document).ready(function(){

  $("#user").click(function(){
    $("#user").hide();
    $("#email").show();
  });

  var email;
    $('#email').change(function(){
      email = $("#email").val();


        $.ajax({
            type: "POST",
            url: "/queryInfo",
            data: { email: email }
          }).done(function(data) {

            if(data.success == false){
                 var errores = '';
                      for(datos in data.errors){
                          errores += '<small >' + data.errors[datos] + '</small>';
                      }
                $('#danger').fadeIn("fast").html(errores);
              }else{
                $('#danger').fadeOut("fast");
                $("#email").hide();
                $("#user").text(data.first + ' ' + data.last);
                $("#user").show();
                  if(!data.avatar==false){
                    $('#avatar').attr("src", data.avatar);
                  }
              }

          });
    });


    $('#loginSubmit').submit(function(event){
      event.preventDefault();

      var postData = $(this).serializeArray();
      var formURL = $(this).attr("action");
        $.ajax({
            type: "POST",
            url: formURL,
            data: postData
          }).done(function(data) {
            if(data.success == false){
              var errores = '';
                   for(datos in data.errors){
                       errores += '<small >' + data.errors[datos] + '</small>';
                   }
                   $('#danger').fadeIn("fast").html(errores);
            }else{
              location.reload();
            }
          });
    });

});
