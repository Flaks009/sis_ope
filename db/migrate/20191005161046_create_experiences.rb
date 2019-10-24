# frozen_string_literal: true

class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :empresa
      t.string :cargo
      t.date :admissao
      t.date :saida
      t.string :cpf_candidato
      t.timestamps
    end
  end
end
