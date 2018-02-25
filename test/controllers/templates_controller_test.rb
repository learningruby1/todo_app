require 'test_helper'

class TemplatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get templates_index_url
    assert_response :success
  end

  test "should get new" do
    get templates_new_url
    assert_response :success
  end

  test "should get create" do
    get templates_create_url
    assert_response :success
  end

  test "should get show" do
    get templates_show_url
    assert_response :success
  end

end
