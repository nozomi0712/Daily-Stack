class ProfilesController < ApplicationController
  before_action :move_to_index, except: :new

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.create(profile_params)

    if @profile.save
      flash[:notice] = "プロフィールを登録しました"
      redirect_to root_path
    else
      flash[:alert] = "プロフィールの登録を失敗しました"
      render action: :new
    end
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])

    if @profile.update(profile_params)
      flash[:notice] = "プロフィールを登録しました"
      redirect_to user_path(current_user.id)
    else
      flash[:alert] = "プロフィールの登録を失敗しました"
      render action: :edit
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:prefecture, :grade, :li_subject, :li_book, :li_anime, :li_food, :li_youtuber, :lessons, :dream, :custom, :comment, :image).merge(user_id: current_user.id)
  end

end
