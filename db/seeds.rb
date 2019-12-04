# frozen_string_literal: true

unless User.exists?(email: 'admin@email.com')
    User.create(email: 'admin@email.com', cpf: '97067917018', 
                password: 'sis_ope', password_confirmation: 'sis_ope', tipoUser: 'admin')

  end

User.create([{email: 'jose.albuquerque@aluno.faculdadeimpacta.com.br', cpf: '14556887932', password: 'sis_ope', password_confirmation: 'sis_ope', tipoUser: 'candidato'},
             {email: 'bruno.flaks@aluno.faculdadeimpacta.com.br', cpf: '24556887932', password: 'sis_ope', password_confirmation: 'sis_ope', tipoUser: 'candidato'},
             {email: 'filipe.furtado@aluno.faculdadeimpacta.com.br', cpf: '34556887932', password: 'sis_ope', password_confirmation: 'sis_ope', tipoUser: 'candidato'},
             {email: 'renato.alves@aluno.faculdadeimpacta.com.br', cpf: '44556887932', password: 'sis_ope', password_confirmation: 'sis_ope', tipoUser: 'candidato'},
             {email: 'hercules.silva@aluno.faculdadeimpacta.com.br', cpf: '54556887932', password: 'sis_ope', password_confirmation: 'sis_ope', tipoUser: 'candidato'},
             {email: 'joel.aguiar@aluno.faculdadeimpacta.com.br', cpf: '64556887932', password: 'sis_ope', password_confirmation: 'sis_ope', tipoUser: 'candidato'}
             ])



Candidato.create([{
    cpf:  '14556887932',
    nome:  'José Eduardo',
    data_nasc:  "1994-05-04",
    cep:  '06622240',
    logradouro:  "Rua Palmeira do Oeste",
    numero:  '408',
    bairro:  'Tereza',
    cidade:  'Jandira',
    uf:  "SP",
    user_id: 2},

    {cpf:  '24556887932',
    nome:  'Bruno Maranini',
    data_nasc:  "1993-06-10",
    cep:  '26414856',
    logradouro:  "Rua Palmeira do Oeste",
    numero:  '58',
    bairro:  'Barra Funda',
    cidade:  'São Paulo',
    uf:  "SP",
    user_id: 3},
       
    {cpf:  '34556887932',
    nome:  'Filipe Gomes',
    data_nasc:  "1980-04-23",
    cep:  '65348975',
    logradouro:  "Rua Palmeira do Oeste",
    numero:  '14',
    bairro:  'Paraisópolis',
    cidade:  'São Paulo',
    uf:  "SP",
    user_id: 4},

    {cpf:  '44556887932',
    nome:  'Renato Souza',
    data_nasc:  "1990-08-14",
    cep:  '44466557',
    logradouro:  "Rua Palmeira do Oeste",
    numero:  '555',
    bairro:  'Liberdade',
    cidade:  'São Paulo',
    uf:  "SP",
    user_id: 5},
               
    {cpf:  '54556887932',
    nome:  'Hercules Silva',
    data_nasc:  "1994-10-06",
    cep:  '55566880',
    logradouro:  "Rua Palmeira do Oeste",
    numero:  '365',
    bairro:  'Morumbi',
    cidade:  'São Paulo',
    uf:  "SP",
    user_id: 6},
    
    {cpf:  '64556887932',
    nome:  'Joel Pereira',
    data_nasc:  "1994-07-16",
    cep:  '03564809',
    logradouro:  "Rua Palmeira do Oeste",
    numero:  '156',
    bairro:  'Butantã',
    cidade:  'São Paulo',
    uf:  "SP",
    user_id: 7}])


Formation.create([{

    tipo: "Graduação",
    curso: "Análise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Técnologia",
    data_inicio: "2018-02-01",
    data_final: "2019-12-06",
    cpf_candidato: "14556887932"},

    {tipo: "Graduação",
    curso: "Análise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Técnologia",
    data_inicio: "2018-02-01",
    data_final: "2019-12-06",
    cpf_candidato: "24556887932"},

    {tipo: "Graduação",
    curso: "Análise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Técnologia",
    data_inicio: "2018-02-01",
    data_final: "2019-12-06",
    cpf_candidato: "34556887932"},

    {tipo: "Graduação",
    curso: "Análise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Técnologia",
    data_inicio: "2018-02-01",
    data_final: "2019-12-06",
    cpf_candidato: "44556887932"},

    {tipo: "Graduação",
    curso: "Análise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Técnologia",
    data_inicio: "2018-02-01",
    data_final: "2019-12-06",
    cpf_candidato: "54556887932"},

    {tipo: "Graduação",
    curso: "Análise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Técnologia",
    data_inicio: "2018-02-01",
    data_final: "2019-12-06",
    cpf_candidato: "64556887932"},
    ])


Experience.create([{

    empresa: "Consorcio Ipojuca Refinaria RNEST",
    cargo: "Analista",
    admissao: "2014-06-01",
    saida: "2015-12-14",
    cpf_candidato: "14556887932"},

    {empresa: "Microsoft",
    cargo: "Desenvolvedor",
    admissao: "2018-07-01",
    saida: "2019-12-26",
    cpf_candidato: "24556887932"},

    {empresa: "GE",
    cargo: "Desenvolvedor",
    admissao: "2015-03-09",
    saida: "2019-12-30",
    cpf_candidato: "34556887932"},

    {empresa: "Banco do Brasil",
    cargo: "Analista",
    admissao: "2013-04-09",
    saida: "2019-12-25",
    cpf_candidato: "44556887932"},

    {empresa: "Google",
    cargo: "Desenvolvedor",
    admissao: "2018-05-04",
    saida: "2019-12-16",
    cpf_candidato: "54556887932"},

    {empresa: "IBM",
    cargo: "Desenvolvedor",
    admissao: "2018-05-19",
    saida: "2019-12-15",
    cpf_candidato: "64556887932"},

    ])



Course.create([{

    nome: "Análise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Técnologia",
    inicio: "2018-02-01",
    final: "2019-12-06",
    cpf_candidato: "14556887932"},

    {nome: "Análise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Técnologia",
    inicio: "2018-02-01",
    final: "2019-12-06",
    cpf_candidato: "24556887932"},

    {nome: "Análise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Técnologia",
    inicio: "2018-02-01",
    final: "2019-12-06",
    cpf_candidato: "34556887932"},

    {nome: "Análise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Técnologia",
    inicio: "2018-02-01",
    final: "2019-12-06",
    cpf_candidato: "44556887932"},

    {nome: "Análise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Técnologia",
    inicio: "2018-02-01",
    final: "2019-12-06",
    cpf_candidato: "54556887932"},

    {nome: "Análise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Técnologia",
    inicio: "2018-02-01",
    final: "2019-12-06",
    cpf_candidato: "64556887932"},
    ])



