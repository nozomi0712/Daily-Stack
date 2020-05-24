class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :prefecture
      t.string :grade
      t.string :li_subject
      t.string :li_book
      t.string :li_anime
      t.string :li_food
      t.string :li_youtuber
      t.string :lessons
      t.string :dream
      t.string :custom
      t.text   :comment
      t.timestamps
    end
  end
end
