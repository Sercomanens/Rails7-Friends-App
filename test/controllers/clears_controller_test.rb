require "test_helper"

class ClearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clear = clears(:one)
  end

  test "should get index" do
    get clears_url
    assert_response :success
  end

  test "should get new" do
    get new_clear_url
    assert_response :success
  end

  test "should create clear" do
    assert_difference("Clear.count") do
      post clears_url, params: { clear: {  } }
    end

    assert_redirected_to clear_url(Clear.last)
  end

  test "should show clear" do
    get clear_url(@clear)
    assert_response :success
  end

  test "should get edit" do
    get edit_clear_url(@clear)
    assert_response :success
  end

  test "should update clear" do
    patch clear_url(@clear), params: { clear: {  } }
    assert_redirected_to clear_url(@clear)
  end

  test "should destroy clear" do
    assert_difference("Clear.count", -1) do
      delete clear_url(@clear)
    end

    assert_redirected_to clears_url
  end
end
