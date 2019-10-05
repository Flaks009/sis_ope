class AddDateToCandidatos < ActiveRecord::Migration[5.0]
  def change
    change_column :candidatos, :data_nasc, 'date USING CAST(data_nasc AS date)'
  end
end
