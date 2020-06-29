//autor: Gabriele Rocha

function listaPontos() {
    var dts = [["1", "1 Ponto", "livre"],
                ["2", "2 Pontos", "pequena-media"],
                ["3", "3 Pontos", "longa"]];
    return dts;
}

function modificaPonto(ponto) {
    var campoSelect = document.getElementById("valor");
    limparCombo(campoSelect);
    montarCombo(campoSelect, listaPontos(), ponto);
}

function montarCombo(campoCombo, listaValores, filtro) {
    if (campoCombo != null) {
        var novoElemento = document.createElement("option");
        for (var i in listaValores) {
            novoElemento = null;
            novoElemento = document.createElement("option");
            if (listaValores[i][2] == filtro) {
                novoElemento.value = listaValores[i][0];
                novoElemento.text = listaValores[i][1];
                campoCombo.options.add(novoElemento);
            }
        }
    }
}

function limparCombo(campoCombo) {
    while (campoCombo.length) {
        campoCombo.remove(0);
    }
}

