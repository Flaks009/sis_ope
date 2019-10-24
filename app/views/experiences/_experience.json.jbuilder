# frozen_string_literal: true

json.extract! experience, :id, :empresa, :cargo, :admissao, :saida, :cpf_candidato, :created_at, :updated_at
json.url experience_url(experience, format: :json)
