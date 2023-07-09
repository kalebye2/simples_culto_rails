require 'test_helper'

class MusicasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get musicas_index_url
    assert_response :success
  end

  test "should get show" do
    get musicas_show_url
    assert_response :success
  end

  test "should get new" do
    get musicas_new_url
    assert_response :success
  end

  test "should get edit" do
    get musicas_edit_url
    assert_response :success
  end

end
