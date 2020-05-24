class PostsController < ApplicationController
  before_action :find_post, except: [:index, :create, :search]
  before_action :move_to_index, except: [:index, :show]
  before_action :permission_user, except: [:index, :show, :create, :search]

  def index
    @post = Post.new

  #トップ画面のストックを表示
    @posts = Post.includes(:user).order(created_at: "DESC")
  #トップ画面のフォロー一覧を表示
    @follows = Post.set_follow_users(current_user).order(created_at: "DESC")
  #トップ画面のいいね済一覧を表示
    @likes = Like.where(user_id: current_user.id).order(created_at: "DESC")
  #トップ画面のお気に入り済一覧を表示
    @favorites = Favorite.where(user_id: current_user.id).order(created_at: "DESC")
  end

  def create
    @post = Post.create(post_params)

    if @post.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.json
      end
    end

  end

  def show
    @image = Image.where(post_id: params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user).order(created_at: "DESC")
  end

  def edit
  end

  def update
    if @post.update(post_params)
      flash[:notice] = "投稿を編集しました"
      redirect_to post_path(params[:id])
    else
      flash[:alert] = "編集に不備がありました"
      redirect_to post_path(params[:id])
    end
  end

  def destroy
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to root_path
  end

  def search
    @post = Post.new
    @posts = Post.search(params[:search])
  end

  private
  def post_params
    params.require(:post).permit(:grade, :subject, :title, :textn, images_attributes: [:id, :image]).merge(user_id: current_user.id)
  end

  def find_post
    @post = Post.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def permission_user
    if @post.user_id != current_user.id
      redirect_to action: :index
    end
  end

end
