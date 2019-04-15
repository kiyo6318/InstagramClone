module PicturesHelper
  def choose_new_or_edit
    if action_name == "new" || action_name == "confirm"
      confirm_picture_path
    elsif action_name == "edit"
      edit_picture_path
    end
  end
end