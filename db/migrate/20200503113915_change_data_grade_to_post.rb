class ChangeDataGradeToPost < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :grade, :string
  end
end
