class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :categories, :category
  end
end
