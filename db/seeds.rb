#!/bin/env ruby

#encoding: utf - 8
# frozen_string_literal: true

User.all.destroy_all
Candidato.all.destroy_all
Formation.all.destroy_all
Course.all.destroy_all
Experience.all.destroy_all

ActiveRecord::Base.connection.tables.each do |t |
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
  end


User.create!([{


    email: "admin@email.com",
    cpf: "97067917018",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "admin"
  },

  {

    email: "jose.albuquerque@aluno.faculdadeimpacta.com.br",
    cpf: "14556887932",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "bruno.flaks@aluno.faculdadeimpacta.com.br",
    cpf: "24556887932",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "filipe.furtado@aluno.faculdadeimpacta.com.br",
    cpf: "34556887932",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "renato.alves@aluno.faculdadeimpacta.com.br",
    cpf: "44556887932",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "hercules.silva@aluno.faculdadeimpacta.com.br",
    cpf: "54556887932",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "joel.aguiar@aluno.faculdadeimpacta.com.br",
    cpf: "64556887932",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "valentinaagatharamos_@consultoriosjc.com.br",
    cpf: "32858366870",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "fernandojoaofernandes..fernandojoaofernandes@ornatopresentes.com.br",
    cpf: "37387600830",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "aalessandramarcelastellasilveira@dominiozeladoria.com.br",
    cpf: "04988005801",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "hadassaalessandrapatriciateixeira_@msltecnologia.com.br",
    cpf: "82668656800",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "josefaveracortereal..josefaveracortereal@agenciaph.com",
    cpf: "47035945873",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "iisabelleteresinhadacosta@commscope.com",
    cpf: "69705045810",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "osvaldoricardomoraes__osvaldoricardomoraes@centroin.com.br",
    cpf: "62498798897",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "aliciaraimundadaconceicao__aliciaraimundadaconceicao@holtmail.com",
    cpf: "49249179820",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "renatacristianejuliaramos_@fepextrusao.com.br",
    cpf: "84500232893",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "cauabentolopes.cauabentolopes@deltaturismo.com.br",
    cpf: "01465644806",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "fernandarebecalarajesus-77@asconinternet.com.br",
    cpf: "34063823806",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "fatimaluciateixeira_@vitaonline.com.br",
    cpf: "94397256802",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "renatoenzoraulpeixoto..renatoenzoraulpeixoto@ramiresmotors.com",
    cpf: "60086412809",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "anthonycauebeneditomendes-71@bbcreative.org",
    cpf: "49470517792",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "livialouisemarinasilveira.@comercial.com.br",
    cpf: "68477174750",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "andreiaalicianairpinto_@doucedoce.com.br",
    cpf: "28901664739",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "thiagoeliasandersonporto_@corp.inf.br",
    cpf: "62729915761",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  },
  {
    email: "anthonyhugoianporto_anthonyhugoianporto@almaquinas.com",
    cpf: "90654244740",
    password: "sis_ope",
    password_confirmation: "sis_ope",
    tipoUser: "candidato"
  }
])

Candidato.create!([{
    cpf: "14556887932",
    nome: "Jose Eduardo",
    data_nasc: "1994-05-04",
    cep: "06622240",
    logradouro: "Rua Palmeira do Oeste",
    numero: "408",
    bairro: "Tereza",
    cidade: "Jandira",
    uf: "SP",
    user_id: 2
  },

  {
    cpf: "24556887932",
    nome: "Bruno Maranini",
    data_nasc: "1993-06-10",
    cep: "26414856",
    logradouro: "Rua Palmeira do Oeste",
    numero: "58",
    bairro: "Barra Funda",
    cidade: "Sao Paulo",
    uf: "SP",
    user_id: 3
  },

  {
    cpf: "34556887932",
    nome: "Filipe Gomes",
    data_nasc: "1980-04-23",
    cep: "65348975",
    logradouro: "Rua Palmeira do Oeste",
    numero: "14",
    bairro: "Paraisopolis",
    cidade: "Sao Paulo",
    uf: "SP",
    user_id: 4
  },

  {
    cpf: "44556887932",
    nome: "Renato Souza",
    data_nasc: "1990-08-14",
    cep: "44466557",
    logradouro: "Rua Palmeira do Oeste",
    numero: "555",
    bairro: "Liberdade",
    cidade: "Sao Paulo",
    uf: "SP",
    user_id: 5
  },

  {
    cpf: "54556887932",
    nome: "Hercules Silva",
    data_nasc: "1994-10-06",
    cep: "55566880",
    logradouro: "Rua Palmeira do Oeste",
    numero: "365",
    bairro: "Morumbi",
    cidade: "Sao Paulo",
    uf: "SP",
    user_id: 6
  },

  {
    cpf: "64556887932",
    nome: "Joel Pereira",
    data_nasc: "1994-07-16",
    cep: "03564809",
    logradouro: "Rua Palmeira do Oeste",
    numero: "156",
    bairro: "Butanta",
    cidade: "Sao Paulo",
    uf: "SP",
    user_id: 7
  },

  {
    cpf: "32858366870",
    nome: "Valentina Agatha Ramos",
    data_nasc: "1994-07-16",
    cep: "05830280",
    logradouro: "Praca Ladislau Ladico",
    numero: "23",
    bairro: "Jardim Guaruja",
    cidade: "Sao Paulo",
    uf: "SP",
    user_id: 8
  },

  {
    cpf: "37387600830",
    nome: "Fernando Joao Fernandes",
    data_nasc: "1996-07-10",
    cep: "03311002",
    logradouro: "Viela Nilta Franca e Oliveira",
    numero: "691",
    bairro: "Vila Gomes Cardim",
    cidade: "Sao Paulo",
    uf: "SP",
    user_id: 9
  },

  {
    cpf: "04988005801",
    nome: "Alessandra Marcela Stella Silveira",
    data_nasc: "1999-07-10",
    cep: "05795180",
    logradouro: "Rua Doutor Frederico de Azevedo Antunes",
    numero: "116",
    bairro: "Jardim Rosana",
    cidade: "Sao Paulo",
    uf: "SP",
    user_id: 10
  },

  {
    cpf: "82668656800",
    nome: "Hadassa Alessandra Patricia Teixeira",
    data_nasc: "1991-09-10",
    cep: "05754071",
    logradouro: "Rua Jaracatia",
    numero: "317",
    bairro: "Jardim Umarizal",
    cidade: "Sao Paulo",
    uf: "SP",
    user_id: 11
  },

  {
    cpf: "47035945873",
    nome: "Josefa Vera Corte Real",
    data_nasc: "1990-09-10",
    cep: "02207100",
    logradouro: "Praca Jornalista Alderaban Cavalcanti",
    numero: "309",
    bairro: "Vila Medeiros",
    cidade: "Sao Paulo",
    uf: "SP",
    user_id: 12
  },

  {
    cpf: "69705045810",
    nome: "Isabelle Teresinha da Costa",
    data_nasc: "2000-09-10",
    cep: "04317260",
    logradouro: "Rua Ideal",
    numero: "39",
    bairro: "Vila Guarani Zona Sul",
    cidade: "Sao Paulo",
    uf: "SP",
    user_id: 13
  },

  {
    cpf: "62498798897",
    nome: "Osvaldo Ricardo Moraes",
    data_nasc: "2001-04-10",
    cep: "04841340",
    logradouro: "Rua Professor Alfredo Attie",
    numero: "312",
    bairro: "Parque Planalto",
    cidade: "Sao Paulo",
    uf: "SP",
    user_id: 14
  },

  {
    cpf: "49249179820",
    nome: "Alicia Raimunda da Conceicao",
    data_nasc: "2001-04-10",
    cep: "03611080",
    logradouro: "Rua Henrique Arbos",
    numero: "300",
    bairro: "Vila Lais",
    cidade: "Sao Paulo",
    uf: "SP",
    user_id: 15
  },

  {
    cpf: "84500232893",
    nome: "Renata Cristiane Julia Ramos",
    data_nasc: "2004-04-10",
    cep: "03016030",
    logradouro: "Rua Euclides da Cunha",
    numero: "3000",
    bairro: "Bras",
    cidade: "Sao Paulo",
    uf: "SP",
    user_id: 16
  },

  {
    cpf: "01465644806",
    nome: "Caua Bento Lopes",
    data_nasc: "2001-04-10",
    cep: "04773090",
    logradouro: "Rua Estoril",
    numero: "367",
    bairro: "Veleiros",
    cidade: "Sao Paulo",
    uf: "SP",
    user_id: 17
  },

  {
    cpf: "34063823806",
    nome: "Fernanda Rebeca Lara Jesus",
    data_nasc: "1991-04-10",
    cep: "02145010",
    logradouro: "Rua Terceiro Sargento Joao Lopes de Assuncao",
    numero: "25",
    bairro: "Parque Novo Mundo",
    cidade: "Sao Paulo",
    uf: "SP",
    user_id: 18
  },

  {
    cpf: "94397256802",
    nome: "Fatima Lucia Teixeira",
    data_nasc: "1995-04-10",
    cep: "01127040",
    logradouro: "Rua Carmine Forte",
    numero: "2545",
    bairro: "Bom Retiro",
    cidade: "Sao Paulo",
    uf: "SP",
    user_id: 19
  },

  {
    cpf: "60086412809",
    nome: "Renato Enzo Raul Peixoto",
    data_nasc: "1990-04-10",
    cep: "04438210",
    logradouro: "Rua Karel Burian",
    numero: "128",
    bairro: "Vila do Castelo",
    cidade: "Sao Paulo",
    uf: "SP",
    user_id: 20
  },

  {
    cpf: "49470517792",
    nome: "Anthony Cau Benedito Mendes",
    data_nasc: "1993-01-10",
    cep: "21021120",
    logradouro: "Rua Sao Basiliano",
    numero: "90",
    bairro: "Penha",
    cidade: "Rio de Janeiro",
    uf: "RJ",
    user_id: 21
  },

  {
    cpf: "68477174750",
    nome: "Livia Louise Marina Silveira",
    data_nasc: "1998-01-10",
    cep: "22793105",
    logradouro: "Rua Coronel Aviador Antonio Arthur Braga",
    numero: "660",
    bairro: "Barra da Tijuca",
    cidade: "Rio de Janeiro",
    uf: "RJ",
    user_id: 22
  },

  {
    cpf: "28901664739",
    nome: "Andreia Alicia Nair Pinto",
    data_nasc: "1990-01-10",
    cep: "21230772",
    logradouro: "Rua Paratinga",
    numero: "800",
    bairro: "Vista Alegre",
    cidade: "Rio de Janeiro",
    uf: "RJ",
    user_id: 23
  },

  {
    cpf: "62729915761",
    nome: "Thiago Elias Anderson Porto",
    data_nasc: "1997-01-10",
    cep: "21932866",
    logradouro: "Travessa Cobre",
    numero: "1188",
    bairro: "Portuguesa",
    cidade: "Rio de Janeiro",
    uf: "RJ",
    user_id: 24
  },

  {
    cpf: "90654244740",
    nome: "Anthony Hugo Ian Porto",
    data_nasc: "1991-01-10",
    cep: "22790790",
    logradouro: "Avenida Djalma Ribeiro",
    numero: "9000",
    bairro: "Barra da Tijuca",
    cidade: "Rio de Janeiro",
    uf: "RJ",
    user_id: 25
  }

])

Formation.create!([{

    tipo: "Graduacao",
    curso: "Analise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Tecnologia",
    data_inicio: "2018-02-01",
    data_final: "2019-12-06",
    cpf_candidato: "14556887932"
  },

  {
    tipo: "Graduacao",
    curso: "Analise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Tecnologia",
    data_inicio: "2018-02-01",
    data_final: "2019-12-06",
    cpf_candidato: "24556887932"
  },

  {
    tipo: "Graduacao",
    curso: "Analise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Tecnologia",
    data_inicio: "2018-02-01",
    data_final: "2019-12-06",
    cpf_candidato: "34556887932"
  },

  {
    tipo: "Graduacao",
    curso: "Analise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Tecnologia",
    data_inicio: "2018-02-01",
    data_final: "2019-12-06",
    cpf_candidato: "44556887932"
  },

  {
    tipo: "Graduacao",
    curso: "Analise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Tecnologia",
    data_inicio: "2018-02-01",
    data_final: "2019-12-06",
    cpf_candidato: "54556887932"
  },

  {
    tipo: "Graduacao",
    curso: "Analise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Tecnologia",
    data_inicio: "2018-02-01",
    data_final: "2019-12-06",
    cpf_candidato: "64556887932"
  },

  {
    tipo: "Graduacao",
    curso: "Sitema Da Informacao",
    instituicao: "Faculdade Impacta de Tecnologia",
    data_inicio: "2015-02-01",
    data_final: "2019-12-06",
    cpf_candidato: "32858366870"
  },

  {
    tipo: "Graduacao",
    curso: "Gestao TI",
    instituicao: "Unip",
    data_inicio: "2014-02-01",
    data_final: "2016-12-06",
    cpf_candidato: "37387600830"
  },

  {
    tipo: "Graduacao",
    curso: "Engenharia De Software",
    instituicao: "FMU",
    data_inicio: "2014-02-01",
    data_final: "2016-12-06",
    cpf_candidato: "04988005801"
  },

  {
    tipo: "Graduacao",
    curso: "Infraestrutura de redes",
    instituicao: "Campos Salle",
    data_inicio: "2016-02-01",
    data_final: "2018-12-06",
    cpf_candidato: "82668656800"
  },

  {
    tipo: "Graduacao",
    curso: "Cincia da Computacao",
    instituicao: "Uninove",
    data_inicio: "2014-02-01",
    data_final: "2018-12-06",
    cpf_candidato: "47035945873"
  },

  {
    tipo: "Graduacao",
    curso: "Analise E Desenvolvimento De Sistema",
    instituicao: "Impacta",
    data_inicio: "2014-02-01",
    data_final: "2016-12-06",
    cpf_candidato: "69705045810"
  },

  {
    tipo: "Graduacao",
    curso: "Analise E Desenvolvimento De Sistema",
    instituicao: "Impacta",
    data_inicio: "2014-02-01",
    data_final: "2016-12-06",
    cpf_candidato: "62498798897"
  },

  {
    tipo: "Graduacao",
    curso: "Analise E Desenvolvimento De Sistema",
    instituicao: "Univesp",
    data_inicio: "2014-02-01",
    data_final: "2016-12-06",
    cpf_candidato: "49249179820"
  },

  {
    tipo: "Graduacao",
    curso: "Informacao De Sistemas",
    instituicao: "Uninove",
    data_inicio: "2014-02-01",
    data_final: "2018-12-06",
    cpf_candidato: "84500232893"
  },

  {
    tipo: "Graduacao",
    curso: "Informacao De Sistemas",
    instituicao: "Unip",
    data_inicio: "2014-02-11",
    data_final: "2018-12-06",
    cpf_candidato: "01465644806"
  },

  {
    tipo: "Pos-Graduacao",
    curso: "Engenharia De Software",
    instituicao: "Universidade Paulista ",
    data_inicio: "2014-02-11",
    data_final: "2016-12-06",
    cpf_candidato: "34063823806"
  },

  {
    tipo: "Graduacao",
    curso: "Redes",
    instituicao: "Universidade Nove de Julho ",
    data_inicio: "2014-02-11",
    data_final: "2016-12-06",
    cpf_candidato: "94397256802"
  },

  {
    tipo: "Graduacao",
    curso: "Gestao De TI",
    instituicao: "Universidade Nove de Julho ",
    data_inicio: "2014-02-11",
    data_final: "2016-12-06",
    cpf_candidato: "60086412809"
  },

  {
    tipo: "Graduacao",
    curso: "Gestao De TI",
    instituicao: "Universidade Estadual Do Rio De Janeiro ",
    data_inicio: "2014-02-11",
    data_final: "2016-12-06",
    cpf_candidato: "49470517792"
  },

  {
    tipo: "Graduacao",
    curso: "Analise E Desenvolvimento De Sistemas",
    instituicao: "Universidade Estacio De Sa ",
    data_inicio: "2013-02-11",
    data_final: "2015-12-06",
    cpf_candidato: "68477174750"
  },

  {
    tipo: "Graduacao",
    curso: "Cincias Da Computacao",
    instituicao: "Universidade Estacio De Sa ",
    data_inicio: "2013-02-11",
    data_final: "2017-12-06",
    cpf_candidato: "28901664739"
  },

  {
    tipo: "Graduacao",
    curso: "Banco De Dados",
    instituicao: "UFRJ",
    data_inicio: "2013-02-11",
    data_final: "2015-12-06",
    cpf_candidato: "62729915761"
  },

  {
    tipo: "Graduacao",
    curso: "Tecnologia Da Informacao",
    instituicao: "UFRJ",
    data_inicio: "2011-02-11",
    data_final: "2015-12-06",
    cpf_candidato: "90654244740"
  },

])

Experience.create!([{

    empresa: "Consorcio Ipojuca Refinaria RNEST",
    cargo: "Analista",
    admissao: "2014-06-01",
    saida: "2015-12-14",
    cpf_candidato: "14556887932"
  },

  {
    empresa: "Microsoft",
    cargo: "Desenvolvedor",
    admissao: "2018-07-01",
    saida: "2019-12-26",
    cpf_candidato: "24556887932"
  },

  {
    empresa: "GE",
    cargo: "Desenvolvedor",
    admissao: "2015-03-09",
    saida: "2019-12-30",
    cpf_candidato: "34556887932"
  },

  {
    empresa: "Banco do Brasil",
    cargo: "Analista",
    admissao: "2013-04-09",
    saida: "2019-12-25",
    cpf_candidato: "44556887932"
  },

  {
    empresa: "Google",
    cargo: "Desenvolvedor",
    admissao: "2018-05-04",
    saida: "2019-12-16",
    cpf_candidato: "54556887932"
  },

  {
    empresa: "IBM",
    cargo: "Desenvolvedor",
    admissao: "2018-05-19",
    saida: "2019-12-15",
    cpf_candidato: "64556887932"
  },

  {
    empresa: "Banco Do Bradesco",
    cargo: "Suporte Tecnico",
    admissao: "2017-05-19",
    saida: "2018-12-15",
    cpf_candidato: "32858366870"
  },

  {
    empresa: "Sony",
    cargo: "Desenvolvedor",
    admissao: "2015-05-19",
    saida: "2017-12-15",
    cpf_candidato: "37387600830"
  },

  {
    empresa: "Soul Solutions",
    cargo: "Analista de requisitos",
    admissao: "2015-05-10",
    saida: "2017-02-15",
    cpf_candidato: "04988005801"
  },

  {
    empresa: "Sistemas Integrados ",
    cargo: "Suporte De Infra",
    admissao: "2015-05-10",
    saida: "2017-02-15",
    cpf_candidato: "82668656800"
  },

  {
    empresa: "Sistem Fit ",
    cargo: "Suporte De Infra",
    admissao: "2015-05-10",
    saida: "2017-02-15",
    cpf_candidato: "47035945873"
  },

  {
    empresa: "Sistem Sixter ",
    cargo: "Analista De Requisitos",
    admissao: "2016-05-10",
    saida: "2018-02-15",
    cpf_candidato: "69705045810"
  },

  {
    empresa: "Drogaria Raia ",
    cargo: "Analista De Sistemas",
    admissao: "2016-05-10",
    saida: "2018-02-15",
    cpf_candidato: "62498798897"
  },

  {
    empresa: "Drogaria Sao Paulo ",
    cargo: "Suporte Tecnico",
    admissao: "2016-05-10",
    saida: "2018-02-15",
    cpf_candidato: "49249179820"
  },

  {
    empresa: "Super Mercado Dia ",
    cargo: "Suporte Tecnico",
    admissao: "2017-05-10",
    saida: "2018-02-15",
    cpf_candidato: "84500232893"
  },

  {
    empresa: "Mix Software ",
    cargo: "Suporte Tecnico",
    admissao: "2017-05-10",
    saida: "2018-02-15",
    cpf_candidato: "01465644806"
  },

  {
    empresa: "Click Software ",
    cargo: "Suporte ao Usuario",
    admissao: "2017-05-10",
    saida: "2018-02-15",
    cpf_candidato: "34063823806"
  },

  {
    empresa: "Walmart ",
    cargo: "Suporte Infraestrutura",
    admissao: "2017-05-10",
    saida: "2019-02-15",
    cpf_candidato: "94397256802"
  },

  {
    empresa: "Samsung ",
    cargo: "Suporte Tecnico",
    admissao: "2017-05-10",
    saida: "2019-02-15",
    cpf_candidato: "60086412809"
  },

  {
    empresa: "Vale ",
    cargo: "Suporte Tecnico",
    admissao: "2016-05-10",
    saida: "2019-02-15",
    cpf_candidato: "49470517792"
  },

  {
    empresa: "BK",
    cargo: "Suporte Tecnico",
    admissao: "2016-05-10",
    saida: "2019-02-15",
    cpf_candidato: "68477174750"
  },

  {
    empresa: "Rapido Campinas",
    cargo: "Desenvolvedor Android",
    admissao: "2015-05-10",
    saida: "2017-02-15",
    cpf_candidato: "28901664739"
  },

  {
    empresa: "Still",
    cargo: "Desenvolvedor Android",
    admissao: "2014-05-10",
    saida: "2017-02-15",
    cpf_candidato: "62729915761"
  },

  {
    empresa: "SiEnergia",
    cargo: "Desenvolvedor",
    admissao: "2015-05-10",
    saida: "2017-02-15",
    cpf_candidato: "90654244740"
  },

])

Course.create!([{

    nome: "Analise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Tecnologia",
    inicio: "2018-02-01",
    final: "2019-12-06",
    cpf_candidato: "14556887932"
  },

  {
    nome: "Analise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Tecnologia",
    inicio: "2018-02-01",
    final: "2019-12-06",
    cpf_candidato: "24556887932"
  },

  {
    nome: "Analise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Tecnologia",
    inicio: "2018-02-01",
    final: "2019-12-06",
    cpf_candidato: "34556887932"
  },

  {
    nome: "Analise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Tecnologia",
    inicio: "2018-02-01",
    final: "2019-12-06",
    cpf_candidato: "44556887932"
  },

  {
    nome: "Analise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Tecnologia",
    inicio: "2018-02-01",
    final: "2019-12-06",
    cpf_candidato: "54556887932"
  },

  {
    nome: "Analise e Desenvolvimento de Sistemas",
    instituicao: "Faculdade Impacta de Tecnologia",
    inicio: "2018-02-01",
    final: "2019-12-06",
    cpf_candidato: "64556887932"
  },

  {
    nome: "Infraestrutura De Redes",
    instituicao: "Faculdade Impacta de Tecnologia",
    inicio: "2018-02-01",
    final: "2019-11-09",
    cpf_candidato: "32858366870"
  },

  {
    nome: "Python Avancado",
    instituicao: "Impacta",
    inicio: "2017-02-01",
    final: "2018-11-09",
    cpf_candidato: "37387600830"
  },

  {
    nome: "Big Data",
    instituicao: "Sumare",
    inicio: "2018-02-01",
    final: "2019-11-09",
    cpf_candidato: "04988005801"
  },

  {
    nome: "Iformatica",
    instituicao: "AllNet",
    inicio: "2012-02-01",
    final: "2013-11-09",
    cpf_candidato: "82668656800"
  },

  {
    nome: "Ingls",
    instituicao: "AllNet",
    inicio: "2012-02-01",
    final: "2013-11-09",
    cpf_candidato: "47035945873"
  },

  {
    nome: "Machine Learning",
    instituicao: "Udemy",
    inicio: "2017-02-01",
    final: "2019-11-09",
    cpf_candidato: "69705045810"
  },

  {
    nome: "Mysql Server",
    instituicao: "Microsoft",
    inicio: "2017-02-01",
    final: "2018-11-09",
    cpf_candidato: "62498798897"
  },

  {
    nome: "Windows Server",
    instituicao: "Microsoft",
    inicio: "2017-02-01",
    final: "2018-11-09",
    cpf_candidato: "49249179820"
  },

  {
    nome: "Redes",
    instituicao: "AllNets",
    inicio: "2016-02-01",
    final: "2018-11-09",
    cpf_candidato: "84500232893"
  },

  {
    nome: "Espanhol",
    instituicao: "AllNets",
    inicio: "2016-02-01",
    final: "2018-11-09",
    cpf_candidato: "01465644806"
  },

  {
    nome: "Analise e Desenvolvimento de Sistemas",
    instituicao: "Universidade Paulista",
    inicio: "2016-02-01",
    final: "2018-11-09",
    cpf_candidato: "34063823806"
  },

  {
    nome: "Analise e Desenvolvimento de Sistemas",
    instituicao: "Universidade Paulista",
    inicio: "2016-02-01",
    final: "2018-11-09",
    cpf_candidato: "94397256802"
  },

  {
    nome: "Sistema Da Informacao",
    instituicao: "Universidade Paulista",
    inicio: "2014-02-01",
    final: "2018-11-09",
    cpf_candidato: "60086412809"
  },

  {
    nome: "Sistema Da Informacao",
    instituicao: "Universidade Estadual Rio De Janeiro",
    inicio: "2014-02-01",
    final: "2018-11-09",
    cpf_candidato: "49470517792"
  },

  {
    nome: "Engenharia De Software",
    instituicao: "Universidade Estacio De Sa",
    inicio: "2016-02-01",
    final: "2017-11-09",
    cpf_candidato: "68477174750"
  },

  {
    nome: "Cincias De Dados",
    instituicao: "Data Sience",
    inicio: "2016-02-01",
    final: "2016-11-09",
    cpf_candidato: "28901664739"
  },

  {
    nome: "MySql",
    instituicao: "UFRJ",
    inicio: "2016-02-01",
    final: "2016-11-09",
    cpf_candidato: "62729915761"
  },

  {
    nome: "Big Data",
    instituicao: "UFRJ",
    inicio: "2016-02-01",
    final: "2016-11-09",
    cpf_candidato: "90654244740"
  },

])