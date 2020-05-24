class ChangeData < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :textn, :string
    change_column :comments, :comments, :string
    change_column :profiles, :image, :string
  end
end
