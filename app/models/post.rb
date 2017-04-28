class Post < ApplicationRecord
  attr_reader :total_comments
  has_many :comments

  def total_comments
    comments.count
  end
end
