class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def authenticate_user
    if current_user == nil
      redirect_to sessions_new_path,notice:"ログインが必要です"
    end
  end
end
