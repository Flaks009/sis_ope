class Experience < ApplicationRecord

    ##Validações
    validates :empresa, format: { with: /\A[a-záàâãéèêíïóôõöúçñ ]+\z/i, message: "Insira somente letras no campo nome da empresa" }
    validates :cargo, format: { with: /\A[a-záàâãéèêíïóôõöúçñ ]+\z/i, message: "Insira somente letras no campo cargo" }



    ##Relacionamentos
    belongs_to :candidato, :primary_key => "cpf", :foreign_key => "cpf_candidato"
end
