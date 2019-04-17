class PicturesController < ApplicationController
  before_action :set_blog,only:[:show,:edit,:update,:destroy]

  def index
    @pictures = Picture.all
  end

  def new
    if params[:back]
      @picture = Picture.new(picture_params)
    else
      @picture = Picture.new
    end
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    if @picture.save
      redirect_to pictures_path,notice: "投稿しました!"
    else
      render 'new'
    end
  end

  def show
    @favorite = current_user.favorites.find_by(picture_id: @picture.id)
  end

  def edit
  end

  def update
    if @picture.update(picture_params)
      redirect_to picture_path,notice:"編集が完了しました!"
    else
      render "edit"
    end
  end

  def destroy
    @picture.destroy
    redirect_to pictures_path,notice:"投稿を削除しました！"
  end

  def confirm
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    render :new if @picture.invalid?
  end

  private

  def picture_params
    params.require(:picture).permit(:word,:image,:image_cache)
  end

  def set_blog
    @picture = Picture.find(params[:id])
  end
end