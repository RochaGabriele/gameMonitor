$('#cadastrar').click(function(e){
		e.preventDefault();
		var userNome = $('#user');
		var nomeComp = $('#nomeCompleto');
		var cpf = $('#cpf');
		var email = $('#email');
		var endereco = $('#end');
		var tel = $('#tel');
		var cargo = $('#cargo').val();
		var senha = $('#senha');
		var confsenha = $('#confsenha');

		if(userNome.val()=='' || senha.val()=='' || email.val()=='' || confsenha.val()=='' || cargo == null || nomeComp.val()=='' || tel.val()=='' || cpf.val()=='' || endereco.val()==''){
			swal({
  				title: "Preencha todos os campos!",
  				icon: "warning"
			});

			return false;
		}
		
		if(senha.val()!=confsenha.val()){
			swal({
  				title: "Senhas incorrespondentes!",
  				icon: "warning"
			});

			return false;	
		}
		$.ajax({
			url:'controle/ServAtor.java',
			method:'POST',
			datatype:"html",
			data:{
				user: userNome.val(),
				email: email.val(),
				senha: senha.val(),
				cargo: cargo,
				cpf: cpf.val(),
				tel: tel.val(),
				end: endereco.val(),
				nomeComp: nomeComp.val(),
			}
		}).done(function(data){
			if(data=="Cadastro realizado com sucesso!"){
				userNome.val('');
				email.val('');
				senha.val('');
				cpf.val('');
				tel.val('');
				endereco.val('');
				nomeComp.val('');
				swal({
  					title: data,
  					text: "Seja bem vindo",
  					icon: "success"
				});
			}else{
				swal({
  					title: "Por favor, tente novamente.",
  					text: data,
  					icon: "warning"
				});
				senha.val('');
				confsenha.val('');
			}
		});

	});








