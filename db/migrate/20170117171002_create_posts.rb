class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :subtitle
      t.string :title
      t.string :description
      t.text :content

      t.timestamps
    end
  end
end
