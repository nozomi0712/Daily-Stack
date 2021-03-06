class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title,   null: false
      t.text :textn,      null: false
      t.text :image
      t.integer :grade,   null: false
      t.string :subject, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
