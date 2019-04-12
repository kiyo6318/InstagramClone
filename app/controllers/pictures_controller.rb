class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to pictures_path,notice: "投稿しました!"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def confirm
  end

  private

  def picture_params
    params.require(:picture).permit(:word,:image,:image_cache)
  end
end