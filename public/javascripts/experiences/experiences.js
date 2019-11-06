window.onload = function () {
    addEvents();
}

var createExperience = document.querySelector('#add-experiencia');

createExperience.addEventListener("click", function (e) {

    e.preventDefault();

    /* ------------------------------------------ */

    var removerExperience = document.createElement('div');
    removerExperience.classList.add('remover-experiencia');
    removerExperience.textContent = "Remover experiência";
    removerExperience.setAttribute('id', 'remover-experiencia-' + (Math.round((Math.random() * 100)) + 1));

    /* ------------------------------------------ */

    var nomeEmpresaLabel = document.createElement('label');
    nomeEmpresaLabel.setAttribute("id", "empresa-label");
    nomeEmpresaLabel.setAttribute("for", "experience_empresa");
    nomeEmpresaLabel.textContent = 'Nome da Empresa';

    var nomeEmpresaInput = document.createElement('input');
    nomeEmpresaInput.setAttribute("id", "field-empresa");
    nomeEmpresaInput.setAttribute("type", "text");
    nomeEmpresaInput.setAttribute("name", "experience[empresa]");
    nomeEmpresaInput.setAttribute("placeholder", "Digite o nome da empresa");

    /* ------------------------------------------ */

    var nomeCargoLabel = document.createElement('label');
    nomeCargoLabel.setAttribute("id", "cargo-label");
    nomeCargoLabel.setAttribute("for", "experience_cargo");
    nomeCargoLabel.textContent = 'Nome do Cargo';

    var nomeCargoInput = document.createElement('input');
    nomeCargoInput.setAttribute("id", "field-cargo");
    nomeCargoInput.setAttribute("type", "text");
    nomeCargoInput.setAttribute("name", "experience[cargo]");
    nomeCargoInput.setAttribute("placeholder", "Digite o nome do cargo");

    /* ------------------------------------------ */

    var dataInicioLabel = document.createElement('label');
    dataInicioLabel.setAttribute('id', 'data-inicio-experiencia-label');
    dataInicioLabel.setAttribute('for', 'experience_data_inicio');
    dataInicioLabel.textContent = 'Data de Admissão';

    var dataInicioField = document.createElement('div');
    dataInicioField.setAttribute('id', 'field-data-inicio-admissao');

    var dataInicioInput = document.createElement('input');
    dataInicioInput.setAttribute('id', 'experience_data_inicio');
    dataInicioInput.setAttribute('type', 'date');
    dataInicioInput.setAttribute('name', 'experience[data_inicio]');

    dataInicioField.appendChild(dataInicioInput);

    /* ------------------------------------------ */

    var dataFimLabel = document.createElement('label');
    dataFimLabel.setAttribute('id', 'data-fim-experiencia-label');
    dataFimLabel.setAttribute('for', 'experience_data_fim');
    dataFimLabel.textContent = 'Data do Desligamento';

    var dataFimField = document.createElement('div');
    dataFimField.setAttribute('id', 'field-data-fim-experiencia');

    var dataFimInput = document.createElement('input');
    dataFimInput.setAttribute('id', 'experience_data_fim');
    dataFimInput.setAttribute('type', 'date');
    dataFimInput.setAttribute('name', 'experience[data_fim]');

    dataFimField.appendChild(dataFimInput);

    /* ------------------------------------------ */

    var appendDiv = document.querySelector('#experiencias');

    var experienciaFields = document.createElement('div');
    experienciaFields.setAttribute('id', 'experiencias-fields-' + (Math.round((Math.random() * 100)) + 1));
    experienciaFields.classList.add('experiencias-fields');

    experienciaFields.appendChild(removerExperience);
    experienciaFields.appendChild(nomeEmpresaLabel);
    experienciaFields.appendChild(nomeEmpresaInput);
    experienciaFields.appendChild(nomeCargoLabel);
    experienciaFields.appendChild(nomeCargoInput);
    experienciaFields.appendChild(dataInicioLabel);
    experienciaFields.appendChild(dataInicioField);
    experienciaFields.appendChild(dataFimLabel);
    experienciaFields.appendChild(dataFimField);

    appendDiv.appendChild(experienciaFields);

    addEvents();

});

function addEvents() {

    var removeField = document.querySelectorAll('.remover-formacao');

    for (var i = 0; i < removeField.length; i++) {
        removeField[i].onclick = function () {
            removeChild(this.parentNode.id);
        }
    }

}

function removeChild(id) {
    var divToRemove = document.getElementById(id);
    divToRemove.className = "";
    divToRemove.innerHTML = "";
}