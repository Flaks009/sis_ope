# frozen_string_literal: true

json.array! @candidatos, partial: 'candidatos/candidato', as: :candidato
