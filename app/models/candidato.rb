class Candidato < ApplicationRecord
    validates :cpf, uniqueness: true
    belongs_to :user
    has_many :course
    has_many :formation
    has_many :experience
end
