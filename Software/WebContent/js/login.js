$('#logar').click(function(e){
		e.preventDefault();
		var userNome = $('#user');
		var senha= $('#senha');
		if(userNome.val()=='' || senha.val()==''){
			swal({
  				title: "Preencha todos os campos!",
  				icon: "warning"
			});

			return false;
		}
		/*$.ajax({
			url:'controle/ServLogin.java',
			method:'POST',
			datatype:"html",
			data:{
				user: userNome.val(),
				senha: senha.val()
			}
		}).done(function(data){
			if(data=="Usuário ou senha incorretos!" || data=="Dados não encontrados, banco de dados vazio" ){
				swal({
  					title: data,
  					text: "Por favor, tente novamente.",
  					icon: "warning"
				});
				senha.val('');
			}else{
				user.val('');
				senha.val('');
			}
		});*/

	});