class CreateCandidatos < ActiveRecord::Migration[5.0]
  def change
    create_table :candidatos do |t|
      t.string :CPF
      t.string :Nome

      t.timestamps
    end
  end
end
