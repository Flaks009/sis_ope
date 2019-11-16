class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :cpf, uniqueness: true, length: {is: 11}
  validates_presence_of :cpf, message: 'CPF não pode ser nulo'
  has_one :candidato, :class_name => "Candidato", :foreign_key => "user_id", :dependent => :destroy

end
