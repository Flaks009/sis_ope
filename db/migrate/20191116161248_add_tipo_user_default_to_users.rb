class AddTipoUserDefaultToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :cpf, :string, :default => nil
    change_column :users, :tipoUser, :string, :default => 'candidato'   
  end
end
