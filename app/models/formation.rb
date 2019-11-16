class Formation < ApplicationRecord
    
    ##Validações
    validates :curso, format: { with: /\A[a-záàâãéèêíïóôõöúçñ ]+\z/i, message: "Insira somente letras no campo nome do curso" }
    validates :instituicao, format: { with: /\A[a-záàâãéèêíïóôõöúçñ ]+\z/i, message: "Insira somente letras no campo nome" }


    ##Relacionamentos
    belongs_to :candidato, :primary_key => "cpf", :foreign_key => "cpf_candidato"
end
