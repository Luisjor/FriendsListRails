require "test_helper"

class FiendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fiend = fiends(:one)
  end

  test "should get index" do
    get fiends_url
    assert_response :success
  end

  test "should get new" do
    get new_fiend_url
    assert_response :success
  end

  test "should create fiend" do
    assert_difference("Fiend.count") do
      post fiends_url, params: { fiend: {  } }
    end

    assert_redirected_to fiend_url(Fiend.last)
  end

  test "should show fiend" do
    get fiend_url(@fiend)
    assert_response :success
  end

  test "should get edit" do
    get edit_fiend_url(@fiend)
    assert_response :success
  end

  test "should update fiend" do
    patch fiend_url(@fiend), params: { fiend: {  } }
    assert_redirected_to fiend_url(@fiend)
  end

  test "should destroy fiend" do
    assert_difference("Fiend.count", -1) do
      delete fiend_url(@fiend)
    end

    assert_redirected_to fiends_url
  end
end
