# frozen_string_literal: true

class AddCpfToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cpf, :string
  end
end
