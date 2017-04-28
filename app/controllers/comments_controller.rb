class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    json_response(@comments)
  end
end
