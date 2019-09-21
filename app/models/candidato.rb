class Candidato < ApplicationRecord
    belongs_to :user, optional: true
end
