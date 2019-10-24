# frozen_string_literal: true

json.extract! formation, :id, :tipo, :curso, :instituicao, :data_inicio, :data_final, :cpf_candidato, :created_at, :updated_at
json.url formation_url(formation, format: :json)
