class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :category, :body, :total_comments

  def total_comments
    self.object.comments.count
  end
end
