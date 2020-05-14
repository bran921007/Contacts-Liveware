$(document).ready(function() {

	$("#form_iconic_validation").submit(function(event){
			event.preventDefault();

			var id = $("#id").val();
			var firstName = $("#FirstName").val();
			var lastName = $("#LastName").val();
			var email = $("#Email").val()+"@linc.do";
			var username = $("#Email").val();
			var password = $("#password").val();
			var trypassword = $("#trypassword").val();
			$(".load").show();
			$.ajax({
									type: "POST",
									url: "/usuarios/actualizar",
									data: { id: id, email: email, username: username, firstName: firstName, lastName: lastName, password: password, confirmationPassword: trypassword}
								}).done(function(data) {
									$(".load").hide();
									if(data.success == false){
										var errores = '';
													for(datos in data.errors){
															errores += '<small class="error">' + data.errors[datos] + '</small>';
													}
										$('#danger').fadeIn("fast").html(errores);
									}else{
										location.reload();
									}

								});

	});

	// Validar Campos con Iconos
	   $('#form_iconic_validation').validate({
                errorElement: 'span',
                errorClass: 'error',
                focusInvalid: false,
                ignore: "",
                rules: {
                    FirstName: {
                        minlength: 3,
                        required: true
                    },
										LastName: {
												minlength: 3,
												required: true
										},
                    Email: {
                        required: true
                    },
										Phone: {
																	minlength: 10,
																	required: true
															},
										diamante: {
											minlength: 3,
											required: true
										},
										platino: {
											minlength: 3,
											required: true
										},
										esmeralda: {
											minlength: 3,
											required: true
										}

                },

                invalidHandler: function (event, validator) {
					//display error alert on form submit
                },

                errorPlacement: function (error, element) { // render error placement for each input type
                    var icon = $(element).parent('.input-with-icon').children('i');
                    var parent = $(element).parent('.input-with-icon');
                    icon.removeClass('fa fa-check').addClass('fa fa-exclamation');
                    parent.removeClass('success-control').addClass('error-control');
                },

                highlight: function (element) { // hightlight error inputs
					var parent = $(element).parent();
                    parent.removeClass('success-control').addClass('error-control');
                },

                unhighlight: function (element) { // revert the change done by hightlight

                },

                success: function (label, element) {
                    var icon = $(element).parent('.input-with-icon').children('i');
					var parent = $(element).parent('.input-with-icon');
                    icon.removeClass("fa fa-exclamation").addClass('fa fa-check');
					parent.removeClass('error-control').addClass('success-control');
                },

                submitHandler: function (form) {

                }
            });


	//$("#Phone").mask("999 - 999-9999");


});
