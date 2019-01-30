class AddUserToNews < ActiveRecord::Migration[5.0]
  def change
    add_reference :news, :user, foreign_key: true
  end
end
