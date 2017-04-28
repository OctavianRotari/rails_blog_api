class AddTotalCommentsToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :total_comments, :integer
  end
end
