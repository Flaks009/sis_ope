# frozen_string_literal: true

class Experience < ApplicationRecord
  has_one :candidato, class_name: 'Experience', foreign_key: 'cpf_candidato'
end
