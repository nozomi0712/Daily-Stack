class RenameColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :text, :textn
  end
end
