require 'test_helper'

class PictureControllerTest < ActionDispatch::IntegrationTest
  test "should get word:text" do
    get picture_word:text_url
    assert_response :success
  end

  test "should get image:text" do
    get picture_image:text_url
    assert_response :success
  end

end
