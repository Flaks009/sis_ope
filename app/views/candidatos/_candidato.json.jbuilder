json.extract! candidato, :id, :cpf, :nome, :created_at, :updated_at
json.url candidato_url(candidato, format: :json)
