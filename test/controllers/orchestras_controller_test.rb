require "test_helper"

class OrchestrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orchestra = orchestras(:one)
  end

  test "should get index" do
    get orchestras_url, as: :json
    assert_response :success
  end

  test "should create orchestra" do
    assert_difference('Orchestra.count') do
      post orchestras_url, params: { orchestra: { name: @orchestra.name } }, as: :json
    end

    assert_response 201
  end

  test "should show orchestra" do
    get orchestra_url(@orchestra), as: :json
    assert_response :success
  end

  test "should update orchestra" do
    patch orchestra_url(@orchestra), params: { orchestra: { name: @orchestra.name } }, as: :json
    assert_response 200
  end

  test "should destroy orchestra" do
    assert_difference('Orchestra.count', -1) do
      delete orchestra_url(@orchestra), as: :json
    end

    assert_response 204
  end
end
