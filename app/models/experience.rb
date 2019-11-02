class Experience < ApplicationRecord
    belongs_to :candidato, :primary_key => "cpf", :foreign_key => "cpf_candidato"
end
