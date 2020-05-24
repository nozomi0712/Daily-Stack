class AddColumnUserImageToprofile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :image, :text
  end
end
