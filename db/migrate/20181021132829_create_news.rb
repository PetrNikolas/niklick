class CreateNews < ActiveRecord::Migration[5.0]
  def change
    create_table :news do |t|
      t.string :title
      t.string :description
      t.string :content

      t.timestamps
    end
  end
end
