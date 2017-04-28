class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]

  def index
    @comment = Comment.all
    json_response(@comment)
  end

  def create
    @comment = Comment.create!(comment_params)
    json_response(@comment, :created)
  end

  def show
    json_response(@comment)
  end

  def update
    @comment.update(comment_params)
    head :no_content
  end

  def destroy
    @comment.destroy
    head :no_content
  end

  private

  def comment_params
    params.permit(:author, :body)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end
