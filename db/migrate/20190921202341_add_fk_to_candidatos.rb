class AddFkToCandidatos < ActiveRecord::Migration[5.0]
  def change
    add_column :candidatos, :user_id, :integer
  end
end
