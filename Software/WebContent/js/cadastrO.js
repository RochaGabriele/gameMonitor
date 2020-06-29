$('#cadastrar').click(function(e){
	
	var password = $('#senha');
	var confirm_password = $('#confsenha');

		if (password.val() != confirm_password.val()) {
			swal({
				title: "Senhas incorrespondentes!",
				icon: "warning"
			});
		    return false;
		 
		}else {
		  return true;
		}
	
	

});

