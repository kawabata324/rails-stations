# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create_table "movies", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
#   t.string "name", limit: 160, null: false, comment: "映画のタイトル。邦題・洋題は一旦考えなくてOK"
#   t.string "year", limit: 45, comment: "公開年"
#   t.text "description", comment: "映画の説明文"
#   t.string "image_url", limit: 150, comment: "映画のポスター画像が格納されているURL"
#   t.boolean "is_showing", null: false, comment: "上映中かどうか"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["name"], name: "index_movies_on_name"
# end

15.times do |n|
  case n + 1
  when 0..5
    Sheet.create!(
      column: n + 1,
      row: 'a'
    )
  when 6..10
    Sheet.create!(
      column: n + 1 - 5,
      row: 'b'
    )
  when 11..15
    Sheet.create!(
      column: n + 1 - 10,
      row: 'c'
    )
  else
    pp "予期しない"
  end
end
