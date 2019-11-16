class Course < ApplicationRecord

    ##Validações
    validates :nome, format: { with: /\A[a-záàâãéèêíïóôõöúçñ ]+\z/i, message: "Insira somente letras no campo nome do curso" }
    validates :instituicao, format: { with: /\A[a-záàâãéèêíïóôõöúçñ ]+\z/i, message: "Insira somente letras no campo instituicao"}

    ##Relacionamentos
    belongs_to :candidato, :primary_key => "cpf", :foreign_key => "cpf_candidato"
end
