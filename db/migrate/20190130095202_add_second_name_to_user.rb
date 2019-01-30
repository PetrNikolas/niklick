class AddSecondNameToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :second_name, :string
  end
end
