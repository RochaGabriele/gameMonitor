const adicionar = document.getElementById("adicionar");
const dados = document.getElementById("dados");

adicionar.addEventListener("click", function (event) {
  let campo = document.createElement("input");
  campo.name = "dados[]";
  campo.classList.add("form-control");
  campo.size = "29";
  campo.autocomplete = "off";
  campo.placeholder = "Digite aqui...";
  dados.appendChild(campo);
});