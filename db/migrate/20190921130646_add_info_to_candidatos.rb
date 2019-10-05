class AddInfoToCandidatos < ActiveRecord::Migration[5.0]
  def change
    add_column :candidatos, :data_nasc, :string
    add_column :candidatos, :cep, :string
    add_column :candidatos, :logradouro, :string
    add_column :candidatos, :numero, :string
    add_column :candidatos, :bairro, :string
    add_column :candidatos, :cidade, :string
    add_column :candidatos, :uf, :string
  end
end
