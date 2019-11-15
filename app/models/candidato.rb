class Candidato < ApplicationRecord
    
    ## Validacoes
    validates :cpf, uniqueness: true
    validates :nome, format: { with: /\A[a-záàâãéèêíïóôõöúçñ ]+\z/i, message: "Insira somente letras no campo nome" }
    validates :logradouro, format: { with: /\A[a-záàâãéèêíïóôõöúçñ ]+\z/i, message: "Insira somente letras no campo logradouro" }
    validates :bairro, format: { with: /\A[a-záàâãéèêíïóôõöúçñ ]+\z/i, message: "Insira somente letras no campo bairro" }
    validates :cidade, format: { with: /\A[a-záàâãéèêíïóôõöúçñ ]+\z/i, message: "Insira somente letras no campo cidade" }    
    validates :cep, numericality: { only_integer: true, message:"Campo CEP só aceita números" }, length: {is: 8, message: "CEP deve conter 8 digitos"}    
    validates :numero, numericality: { only_integer: true, message:"Campo número só aceita números" }
    
    
    ## Relacionamentos    
    belongs_to :user
    has_many :course, :class_name => "Course", :foreign_key => "cpf_candidato", :primary_key => "cpf"
    has_many :formation, :class_name => "Formation", :foreign_key => "cpf_candidato", :primary_key => "cpf"
    has_many :experience, :class_name => "Experience", :foreign_key => "cpf_candidato", :primary_key => "cpf"
end
