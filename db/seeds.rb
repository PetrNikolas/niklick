# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  News.create full_name: Faker::StarWars.character,
                  email: Faker::Internet.unique.email,
                  gender: (rand > 0.5 ? 'male' : 'female'),
                  salary: Faker::Number.between(1, 5000)


    t.string   "title"
    t.string   "description"
    t.string   "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_news_on_user_id", using: :btree
end
