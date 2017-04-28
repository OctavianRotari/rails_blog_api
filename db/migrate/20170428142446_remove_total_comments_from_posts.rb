class RemoveTotalCommentsFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :total_comments, :integer
  end
end
