class CreateFormation < ActiveRecord::Migration[5.0]
  def change
    create_table :formations do |t|
      t.string :tipo
      t.string :curso
      t.string :instituicao
      t.date   :data_inicio
      t.date   :data_final

      t.timestamps
    end
  end
end
