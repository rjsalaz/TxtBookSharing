require 'test_helper'

class TextbooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get textbooks_index_url
    assert_response :success
  end

  test "should get new" do
    get textbooks_new_url
    assert_response :success
  end

  test "should get create" do
    get textbooks_create_url
    assert_response :success
  end

  test "should get destroy" do
    get textbooks_destroy_url
    assert_response :success
  end

end
