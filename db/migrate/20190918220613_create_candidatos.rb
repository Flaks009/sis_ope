class CreateCandidatos < ActiveRecord::Migration[5.0]
  def change
    create_table :candidatos do |t|
      t.string :cpf
      t.string :nome

      t.timestamps
    end
  end
end
