class Course < ApplicationRecord

    ##Validações
    validates :nome, format: { with: /\A[a-záàâãéèêíïóôõöúçñ ]+\z/i, message: ": Insira somente letras no campo 'Nome do Curso'" }
    validates :instituicao, format: { with: /\A[a-záàâãéèêíïóôõöúçñ ]+\z/i, message: ": Insira somente letras no campo 'Nome da Instituição'"}

    ##Relacionamentos
    belongs_to :candidato, :primary_key => "cpf", :foreign_key => "cpf_candidato"
end
