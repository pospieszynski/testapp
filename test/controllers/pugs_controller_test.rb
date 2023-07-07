require "test_helper"

class PugsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pug = pugs(:one)
  end

  test "should get index" do
    get pugs_url, as: :json
    assert_response :success
  end

  test "should create pug" do
    assert_difference("Pug.count") do
      post pugs_url, params: { pug: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show pug" do
    get pug_url(@pug), as: :json
    assert_response :success
  end

  test "should update pug" do
    patch pug_url(@pug), params: { pug: {  } }, as: :json
    assert_response :success
  end

  test "should destroy pug" do
    assert_difference("Pug.count", -1) do
      delete pug_url(@pug), as: :json
    end

    assert_response :no_content
  end
end
