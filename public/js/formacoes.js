window.onload = function() {
    addEvents();
}

var createFormation = document.querySelector('#add-formacao');

createFormation.addEventListener("click", function(e){
   
    e.preventDefault();
    
    /* ------------------------------------------ */
    
    var removerFormacao = document.createElement('div');
    removerFormacao.classList.add('remover-formacao');
    removerFormacao.textContent = "Remover formação";
    removerFormacao.setAttribute('id', 'remover-formacao-'+(Math.round((Math.random() * 100))+1));
    
    /* ------------------------------------------ */
    
    var tipoFormacao = document.createElement('div');
    tipoFormacao.classList.add('field');
    
    var tipoFormacaoLabel = document.createElement('p');
    tipoFormacaoLabel.classList.add('tipo-formacao-label');
    tipoFormacaoLabel.textContent = 'Tipo de formação';
    
    var tipoFormacaoSelect = document.createElement('select');
    tipoFormacaoSelect.classList.add('tipo-formacao-input');
    var txtTipoFormacao = document.createAttribute('type');
    txtTipoFormacao.textContent = 'text';
    var plhTipoFormacao = document.createAttribute('placeholder');
    plhTipoFormacao.textContent = 'Escolha uma opção';
    tipoFormacaoSelect.setAttributeNode(txtTipoFormacao);
    tipoFormacaoSelect.setAttributeNode(plhTipoFormacao);
    
    var opt1 = document.createElement('option');
    var vopt1 = document.createAttribute('value');
    vopt1.textContent = 'tecnico';
    opt1.setAttributeNode(vopt1);
    opt1.textContent = 'Técnico'
    
    var opt2 = document.createElement('option');
    var vopt2 = document.createAttribute('value');
    vopt2.textContent = 'graduacao';
    opt2.setAttributeNode(vopt2);
    opt2.textContent = 'Graduação'
    
    var opt3 = document.createElement('option');
    var vopt3 = document.createAttribute('value');
    vopt3.textContent = 'pos-graduacao';
    opt3.setAttributeNode(vopt3);
    opt3.textContent = 'Pós-Graduação'
    
    var opt4 = document.createElement('option');
    var vopt4 = document.createAttribute('value');
    vopt4.textContent = 'mestrado';
    opt4.setAttributeNode(vopt4);
    opt4.textContent = 'Mestrado'
    
    var opt5 = document.createElement('option');
    var vopt5 = document.createAttribute('value');
    vopt5.textContent = 'doutorado';
    opt5.setAttributeNode(vopt5);
    opt5.textContent = 'Doutorado'
    
    var opt6 = document.createElement('option');
    var vopt6 = document.createAttribute('value');
    vopt6.textContent = 'pos-doutorado';
    opt6.setAttributeNode(vopt6);
    opt6.textContent = 'Pós-Doutorado'
    
    tipoFormacaoSelect.appendChild(opt1);
    tipoFormacaoSelect.appendChild(opt2);
    tipoFormacaoSelect.appendChild(opt3);
    tipoFormacaoSelect.appendChild(opt4);
    tipoFormacaoSelect.appendChild(opt5);
    tipoFormacaoSelect.appendChild(opt6);
    
    tipoFormacao.appendChild(tipoFormacaoLabel);
    tipoFormacao.appendChild(tipoFormacaoSelect);
    
    /* ------------------------------------------ */
    
    var nomeCurso = document.createElement('div');
    nomeCurso.classList.add('field');
    
    var nomeCursoLabel = document.createElement('p');
    nomeCursoLabel.classList.add('nome-curso-label');
    nomeCursoLabel.textContent = 'Nome do Curso';
    
    var nomeCursoInput = document.createElement('input');
    nomeCursoInput.classList.add('nome-curso-input');
    var txtNomeCursoInput = document.createAttribute('type');
    txtNomeCursoInput.textContent = 'text';
    var plhNomeCursoInput = document.createAttribute('placeholder');
    plhNomeCursoInput.textContent = 'Nome do curso';
    
    nomeCursoInput.setAttributeNode(txtNomeCursoInput);
    nomeCursoInput.setAttributeNode(plhNomeCursoInput);
    
    nomeCurso.appendChild(nomeCursoLabel);
    nomeCurso.appendChild(nomeCursoInput);
    
    /* ------------------------------------------ */
    
    var nomeInstituicao = document.createElement('div');
    nomeInstituicao.classList.add('field');
    
    var nomeInstituicaoLabel = document.createElement('p');
    nomeInstituicaoLabel.classList.add('nome-instituicao-label');
    nomeInstituicaoLabel.textContent = 'Nome da Instituição';
    
    var nomeInstituicaoInput = document.createElement('input');
    nomeInstituicaoInput.classList.add('nome-instituicao-input');
    var txtNomeInstituicaoInput = document.createAttribute('type');
    txtNomeInstituicaoInput.textContent = 'text';
    var plhNomeInstituicaoInput = document.createAttribute('placeholder');
    plhNomeInstituicaoInput.textContent = 'Nome da instituição';
    
    nomeInstituicaoInput.setAttributeNode(txtNomeInstituicaoInput);
    nomeInstituicaoInput.setAttributeNode(plhNomeInstituicaoInput);
    
    nomeInstituicao.appendChild(nomeInstituicaoLabel);
    nomeInstituicao.appendChild(nomeInstituicaoInput);
    
    /* ------------------------------------------ */
    
    var dataInicio = document.createElement('div');
    dataInicio.classList.add('field');
    
    var dataInicioLabel = document.createElement('p');
    dataInicioLabel.classList.add('data-inicio-curso-label');
    dataInicioLabel.textContent = 'Data de Início do Curso';
    
    var dataInicioInput = document.createElement('input');
    dataInicioInput.classList.add('data-inicio-curso-input');
    var txtDataInicioInput = document.createAttribute('type');
    txtDataInicioInput.textContent = 'month';
    
    dataInicioInput.setAttributeNode(txtDataInicioInput);
    
    dataInicio.appendChild(dataInicioLabel);
    dataInicio.appendChild(dataInicioInput);
    
    /* ------------------------------------------ */
    
    var dataFim = document.createElement('div');
    dataFim.classList.add('field');
    
    var dataFimLabel = document.createElement('p');
    dataFimLabel.classList.add('data-fim-curso-label');
    dataFimLabel.textContent = 'Data de Finalização do Curso';
    
    var dataFimInput = document.createElement('input');
    dataFimInput.classList.add('data-fim-curso-input');
    var txtDataFimInput = document.createAttribute('type');
    txtDataFimInput.textContent = 'month';
    
    dataFimInput.setAttributeNode(txtDataFimInput);
    
    dataFim.appendChild(dataFimLabel);
    dataFim.appendChild(dataFimInput);
    
    /* ------------------------------------------ */
    
    var appendDiv = document.querySelector('#formacoes');
    
    var formacaoFields = document.createElement('div');
    formacaoFields.setAttribute('id', 'formacoes-fields-'+(Math.round((Math.random() * 100))+1));
    formacaoFields.classList.add('formacoes-fields');
    
    formacaoFields.appendChild(removerFormacao);
    formacaoFields.appendChild(tipoFormacao);
    formacaoFields.appendChild(nomeCurso);
    formacaoFields.appendChild(nomeInstituicao);
    formacaoFields.appendChild(dataInicio);
    formacaoFields.appendChild(dataFim);
    
    appendDiv.appendChild(formacaoFields);
    
    addEvents();
    
});

function addEvents() {
    
    var removeField = document.querySelectorAll('.remover-formacao');
    
    for(var i=0;i<removeField.length;i++) {
        removeField[i].onclick = function() {
            removeChild(this.parentNode.id);
        }
    }
    
}

function removeChild(id) {
    var divToRemove = document.getElementById(id);
    divToRemove.className = "";
    divToRemove.innerHTML = "";
}