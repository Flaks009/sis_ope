class Candidato < ApplicationRecord
    
    ## Validacoes
    validates :cpf, uniqueness: true
    validates :nome, format: { with: /\A[a-záàâãéèêíïóôõöúçñ ]+\z/i, message: ": Insira somente letras no campo 'Nome'" }
    validates :logradouro, format: { with: /\A[a-záàâãéèêíïóôõöúçñ 0-9]+\z/i, message: ": Insira somente letras no campo 'Logradouro'" }
    validates :bairro, format: { with: /\A[a-záàâãéèêíïóôõöúçñ ]+\z/i, message: ": Insira somente letras no campo 'Bairro'" }
    validates :cidade, format: { with: /\A[a-záàâãéèêíïóôõöúçñ ]+\z/i, message: ": Insira somente letras no campo 'Cidade'" }    
    validates :cep, numericality: { only_integer: true, message:": CEP só aceita números" }, length: {is: 8, message: ": CEP deve conter 8 dígitos"}    
    validates :numero, numericality: { only_integer: true, message:": Campo 'Número' só aceita números" }
    
    
    ## Relacionamentos    
    belongs_to :user
    has_many :course, :class_name => "Course", :foreign_key => "cpf_candidato", :primary_key => "cpf", :dependent => :destroy
    has_many :formation, :class_name => "Formation", :foreign_key => "cpf_candidato", :primary_key => "cpf", :dependent => :destroy
    has_many :experience, :class_name => "Experience", :foreign_key => "cpf_candidato", :primary_key => "cpf", :dependent => :destroy
end
