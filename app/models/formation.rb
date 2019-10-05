class Formation < ApplicationRecord
    has_one :candidato, :class_name => "Formation", :foreign_key => "cpf_candidato"
end
