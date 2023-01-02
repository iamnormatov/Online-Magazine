require "test_helper"

class CategoryersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categoryer = categoryers(:one)
  end

  test "should get index" do
    get categoryers_url
    assert_response :success
  end

  test "should get new" do
    get new_categoryer_url
    assert_response :success
  end
 
  test "should create categoryer" do
    assert_difference("Categoryer.count") do
      post categoryers_url, params: { categoryer: { name: @categoryer.name } }
    end

    assert_redirected_to categoryer_url(Categoryer.last)
  end

  test "should show categoryer" do
    get categoryer_url(@categoryer)
    assert_response :success
  end

  test "should get edit" do
    get edit_categoryer_url(@categoryer)
    assert_response :success
  end

  test "should update categoryer" do
    patch categoryer_url(@categoryer), params: { categoryer: { name: @categoryer.name } }
    assert_redirected_to categoryer_url(@categoryer)
  end

  test "should destroy categoryer" do
    assert_difference("Categoryer.count", -1) do
      delete categoryer_url(@categoryer)
    end

    assert_redirected_to categoryers_url
  end
end
