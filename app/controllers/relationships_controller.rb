class RelationshipsController < ApplicationController
  before_action :set_user, only: [:create, :destroy]

  def create
    following = current_user.follow(@user)
    if following.save
      redirect_to @user
    else
      flash[:alert] = 'ユーザーのフォローに失敗しました'
      redirect_to @user
    end
  end

  def destroy
    following = current_user.unfollow(@user)
    if following.destroy
      redirect_to @user
    else
      flash[:alert] = 'ユーザーのフォロー解除に失敗しました'
      redirect_to @user
    end
  end

  def follow_list
    user = User.find(params[:id]) 
    @users = user.followings.all.order(created_at: "DESC")
  end

  def follower_list
    user = User.find(params[:id]) 
    @users = user.followers.all.order(created_at: "DESC")
  end

    private
    def set_user
      @user = User.find(params[:relationship][:follow_id])
    end

end
