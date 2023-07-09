require 'test_helper'

class CultosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cultos_index_url
    assert_response :success
  end

  test "should get show" do
    get cultos_show_url
    assert_response :success
  end

  test "should get new" do
    get cultos_new_url
    assert_response :success
  end

  test "should get edit" do
    get cultos_edit_url
    assert_response :success
  end

end
