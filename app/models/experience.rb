class Experience < ApplicationRecord

    ##Validações
    validates :empresa, format: { with: /\A[a-záàâãéèêíïóôõöúçñ ]+\z/i, message: ": Insira somente letras no campo 'Nome da Empresa'" }
    validates :cargo, format: { with: /\A[a-záàâãéèêíïóôõöúçñ ]+\z/i, message: ": Insira somente letras no campo 'Nome do Cargo'" }



    ##Relacionamentos
    belongs_to :candidato, :primary_key => "cpf", :foreign_key => "cpf_candidato"
end
