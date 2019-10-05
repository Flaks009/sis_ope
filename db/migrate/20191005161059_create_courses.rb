class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :nome
      t.string :instituicao
      t.string :cargo
      t.date :inicio
      t.date :final
      t.string :cpf_candidato
      t.timestamps
    end
  end
end
