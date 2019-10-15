json.extract! course, :id, :nome, :instituicao, :inicio, :final, :cpf_candidato, :created_at, :updated_at
json.url course_url(course, format: :json)
