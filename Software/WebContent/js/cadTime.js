$('#cadastrar').click(function(e){
	e.preventDefault();
	var nomeTime = $('#nome');
	var origem = $('#origem');
	var nomeTecnico= $('#tec');
	if(nomeTime.val()=='' || origem.val()=='' || nomeTecnico.val()==''){
		swal({
			title: "Preencha todos os campos!",
			icon: "warning"
		});

		return false;
	}
});