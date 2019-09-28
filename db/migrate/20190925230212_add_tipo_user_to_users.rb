class AddTipoUserToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :tipoUser, :string
  end
end
