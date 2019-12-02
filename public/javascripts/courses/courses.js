window.onload = function() {
    addEvents();
}

var createCourse = document.querySelector('#add-curso');

createCourse.addEventListener("click", function(e){
   
    e.preventDefault();
    
    /* ------------------------------------------ */
    
    var removerCurso = document.createElement('div');
    removerCurso.classList.add('remover-curso');
    removerCurso.textContent = "Remover curso";
    removerCurso.setAttribute('id', 'remover-curso-'+(Math.round((Math.random() * 100))+1));
   
    /* ------------------------------------------ */
       
    var nomeCursoLabel = document.createElement('label');
    nomeCursoLabel.setAttribute("id", "curso-label");
    nomeCursoLabel.setAttribute("for", "course_curso");
    nomeCursoLabel.textContent = 'Nome do Curso';
    
    var nomeCursoInput = document.createElement('input');
    nomeCursoInput.setAttribute("id", "field-curso");
    nomeCursoInput.setAttribute("type", "text");
    nomeCursoInput.setAttribute("name", "course[curso]");
    nomeCursoInput.setAttribute("placeholder", "Digite o nome do curso");
    
    /* ------------------------------------------ */
    
    var nomeInstituicaoLabel = document.createElement('label');
    nomeInstituicaoLabel.setAttribute("id", "instituicao-label");
    nomeInstituicaoLabel.setAttribute("for", "course_instituicao");
    nomeInstituicaoLabel.textContent = 'Nome da Instituição';
    
    var nomeInstituicaoInput = document.createElement('input');
    nomeInstituicaoInput.setAttribute("id", "field-instituicao");
    nomeInstituicaoInput.setAttribute("type", "text");
    nomeInstituicaoInput.setAttribute("name", "course[instituicao");
    nomeInstituicaoInput.setAttribute("placeholder", "Digite o nome da instituição");

    /* ------------------------------------------ */
        
    var dataInicioLabel = document.createElement('label');
    dataInicioLabel.setAttribute('id', 'data-inicio-curso-label');
    dataInicioLabel.setAttribute('for', 'course_data_inicio');
    dataInicioLabel.textContent = 'Data de Início do Curso';
    
    var dataInicioField = document.createElement('div');
    dataInicioField.setAttribute('id', 'field-data-inicio-curso');
    
    var dataInicioInput = document.createElement('input');
    dataInicioInput.setAttribute('id', 'course_data_inicio');
    dataInicioInput.setAttribute('type', 'date');
    dataInicioInput.setAttribute('name', 'course[data_inicio]');
    
    dataInicioField.appendChild(dataInicioInput);
    
    /* ------------------------------------------ */
    
    var dataFimLabel = document.createElement('label');
    dataFimLabel.setAttribute('id', 'data-fim-curso-label');
    dataFimLabel.setAttribute('for', 'course_data_fim');
    dataFimLabel.textContent = 'Data de Final do Curso';
    
    var dataFimField = document.createElement('div');
    dataFimField.setAttribute('id', 'field-data-fim-curso');
    
    var dataFimInput = document.createElement('input');
    dataFimInput.setAttribute('id', 'course_data_fim');
    dataFimInput.setAttribute('type', 'date');
    dataFimInput.setAttribute('name', 'course[data_fim]');
    
    dataFimField.appendChild(dataFimInput);
    
    /* ------------------------------------------ */
    
    var appendDiv = document.querySelector('#cursos');
    
    var cursosFields = document.createElement('div');
    cursosFields.setAttribute('id', 'cursos-fields-'+(Math.round((Math.random() * 100))+1));
    cursosFields.classList.add('cursos-fields');
    
    cursosFields.appendChild(removerCurso);
    cursosFields.appendChild(nomeCursoLabel);
    cursosFields.appendChild(nomeCursoInput);
    cursosFields.appendChild(nomeInstituicaoLabel);
    cursosFields.appendChild(nomeInstituicaoInput);
    cursosFields.appendChild(dataInicioLabel);
    cursosFields.appendChild(dataInicioField);
    cursosFields.appendChild(dataFimLabel);
    cursosFields.appendChild(dataFimField);
    
    appendDiv.appendChild(cursosFields);
    
    addEvents();
    
});

function addEvents() {
    
    var removeField = document.querySelectorAll('.remover-curso');
    
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