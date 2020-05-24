class UsersController < ApplicationController
  before_action :find_user, except: :index

  def index
    @users = User.includes(:profile).order(created_at: "DESC")
  end

  def show
    @posts = Post.where(user_id:(params[:id])).includes(:user).order(created_at: "DESC")
    @profile = Profile.find(@user.profile.id)
    @comments = Comment.where(user_id:params[:id]).includes(:post).order(created_at: "DESC")
  end

  private
  def find_user
    @user = User.find(params[:id])
  end
end
