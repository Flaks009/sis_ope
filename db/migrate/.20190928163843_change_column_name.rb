# frozen_string_literal: true

class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :candidatos, :cpf, :cpf
    rename_column :candidatos, :nome, :nome
  end
end
