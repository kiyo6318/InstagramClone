class UsersController < ApplicationController
  before_action :set_user,only:[:show,:edit,:update,:favorites,:ensure_correct_user_u]
  before_action :authenticate_user,only:[:show,:edit,:update]
  before_action :ensure_correct_user_u,only:[:edit,:update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.id), notice: "アカウントを作成しました!"
    else
      render'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user.id),notice:"ユーザープロフィールを編集しました！"
    else
      render "edit"
    end
  end

  def favorites
    @favorites = @user.favorite_picture
  end

  def ensure_correct_user_u
    if @user.id != current_user.id
      redirect_to pictures_path,notice:"権限がありません"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation,:image,:image_cache)
  end

  def set_user
    @user = User.find(params[:id])
  end
end