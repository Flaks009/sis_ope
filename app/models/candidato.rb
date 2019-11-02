class Candidato < ApplicationRecord
    validates :cpf, uniqueness: true
    belongs_to :user
    has_many :course, :class_name => "Course", :foreign_key => "cpf_candidato", :primary_key => "cpf"
    has_many :formation, :class_name => "Formation", :foreign_key => "cpf_candidato", :primary_key => "cpf"
    has_many :experience, :class_name => "Experience", :foreign_key => "cpf_candidato", :primary_key => "cpf"
end
