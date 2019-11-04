window.onload = function () {
    addEvents();
}

var createFormation = document.querySelector('#add-formacao');

createFormation.addEventListener("click", function (e) {

    e.preventDefault();

    /* ------------------------------------------ */

    var removerFormacao = document.createElement('div');
    removerFormacao.classList.add('remover-formacao');
    removerFormacao.textContent = "Remover formação";
    removerFormacao.setAttribute('id', 'remover-formacao-' + (Math.round((Math.random() * 100)) + 1));

    /* ------------------------------------------ */
    var tipoFormacaoLabel = document.createElement('label');
    tipoFormacaoLabel.setAttribute("id", "tipo-label");
    tipoFormacaoLabel.setAttribute("for", "formation_tipo");
    tipoFormacaoLabel.textContent = 'Tipo de formação';

    var tipoFormacaoSelect = document.createElement('select');
    tipoFormacaoSelect.setAttribute("id", "formation_tipo");
    tipoFormacaoSelect.setAttribute("name", "formation[tipo]");

    var opt1 = document.createElement('option');
    var vopt1 = document.createAttribute('value');
    vopt1.textContent = 'Técnico';
    opt1.setAttributeNode(vopt1);
    opt1.textContent = 'Técnico'

    var opt2 = document.createElement('option');
    var vopt2 = document.createAttribute('value');
    vopt2.textContent = 'Graduação';
    opt2.setAttributeNode(vopt2);
    opt2.textContent = 'Graduação'

    var opt3 = document.createElement('option');
    var vopt3 = document.createAttribute('value');
    vopt3.textContent = 'Pós-Graduação';
    opt3.setAttributeNode(vopt3);
    opt3.textContent = 'Pós-Graduação'

    var opt4 = document.createElement('option');
    var vopt4 = document.createAttribute('value');
    vopt4.textContent = 'Mestrado';
    opt4.setAttributeNode(vopt4);
    opt4.textContent = 'Mestrado'

    var opt5 = document.createElement('option');
    var vopt5 = document.createAttribute('value');
    vopt5.textContent = 'Doutorado';
    opt5.setAttributeNode(vopt5);
    opt5.textContent = 'Doutorado'

    var opt6 = document.createElement('option');
    var vopt6 = document.createAttribute('value');
    vopt6.textContent = 'Pós-Doutorado';
    opt6.setAttributeNode(vopt6);
    opt6.textContent = 'Pós-Doutorado'

    tipoFormacaoSelect.appendChild(opt1);
    tipoFormacaoSelect.appendChild(opt2);
    tipoFormacaoSelect.appendChild(opt3);
    tipoFormacaoSelect.appendChild(opt4);
    tipoFormacaoSelect.appendChild(opt5);
    tipoFormacaoSelect.appendChild(opt6);

    /* ------------------------------------------ */

    var nomeCursoLabel = document.createElement('label');
    nomeCursoLabel.setAttribute("id", "curso-label");
    nomeCursoLabel.setAttribute("for", "formation_curso");
    nomeCursoLabel.textContent = 'Nome do Curso';

    var nomeCursoInput = document.createElement('input');
    nomeCursoInput.setAttribute("id", "field-curso");
    nomeCursoInput.setAttribute("type", "text");
    nomeCursoInput.setAttribute("name", "formation[curso]");
    nomeCursoInput.setAttribute("placeholder", "Digite o nome do curso");

    /* ------------------------------------------ */

    var nomeInstituicaoLabel = document.createElement('label');
    nomeInstituicaoLabel.setAttribute("id", "instituicao-label");
    nomeInstituicaoLabel.setAttribute("for", "formation_instituicao");
    nomeInstituicaoLabel.textContent = 'Nome da Instituição';

    var nomeInstituicaoInput = document.createElement('input');
    nomeInstituicaoInput.setAttribute("id", "field-instituicao");
    nomeInstituicaoInput.setAttribute("type", "text");
    nomeInstituicaoInput.setAttribute("name", "formation[instituicao]");
    nomeInstituicaoInput.setAttribute("placeholder", "Digite o nome da instituição");

    /* ------------------------------------------ */

    var dataInicioLabel = document.createElement('label');
    dataInicioLabel.setAttribute('id', 'data-inicio-curso-label');
    dataInicioLabel.setAttribute('for', 'formation_data_inicio');
    dataInicioLabel.textContent = 'Data de Início do Curso';

    var dataInicioField = document.createElement('div');
    dataInicioField.setAttribute('id', 'field-data-inicio-curso');

    var dataInicioInput = document.createElement('input');
    dataInicioInput.setAttribute('id', 'formation_data_inicio');
    dataInicioInput.setAttribute('type', 'date');
    dataInicioInput.setAttribute('name', 'formation[data_inicio]');

    dataInicioField.appendChild(dataInicioInput);

    /* ------------------------------------------ */

    var dataFimLabel = document.createElement('label');
    dataFimLabel.setAttribute('id', 'data-fim-curso-label');
    dataFimLabel.setAttribute('for', 'formation_data_fim');
    dataFimLabel.textContent = 'Data de Final do Curso';

    var dataFimField = document.createElement('div');
    dataFimField.setAttribute('id', 'field-data-fim-curso');

    var dataFimInput = document.createElement('input');
    dataFimInput.setAttribute('id', 'formation_data_fim');
    dataFimInput.setAttribute('type', 'date');
    dataFimInput.setAttribute('name', 'formation[data_fim]');

    dataFimField.appendChild(dataFimInput);

    /* ------------------------------------------ */

    var appendDiv = document.querySelector('#formacoes');

    var formacaoFields = document.createElement('div');
    formacaoFields.setAttribute('id', 'formacoes-fields-' + (Math.round((Math.random() * 100)) + 1));
    formacaoFields.classList.add('formacoes-fields');

    formacaoFields.appendChild(removerFormacao);
    formacaoFields.appendChild(tipoFormacaoLabel);
    formacaoFields.appendChild(tipoFormacaoSelect);
    formacaoFields.appendChild(nomeCursoLabel);
    formacaoFields.appendChild(nomeCursoInput);
    formacaoFields.appendChild(nomeInstituicaoLabel);
    formacaoFields.appendChild(nomeInstituicaoInput);
    formacaoFields.appendChild(dataInicioLabel);
    formacaoFields.appendChild(dataInicioField);
    formacaoFields.appendChild(dataFimLabel);
    formacaoFields.appendChild(dataFimField);

    appendDiv.appendChild(formacaoFields);

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