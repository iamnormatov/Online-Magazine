require "test_helper"

class CategoriysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categoriy = categoriys(:one)
  end

  test "should get index" do
    get categoriys_url
    assert_response :success
  end

  test "should get new" do
    get new_categoriy_url
    assert_response :success
  end

  test "should create categoriy" do
    assert_difference("Categoriy.count") do
      post categoriys_url, params: { categoriy: { name: @categoriy.name } }
    end

    assert_redirected_to categoriy_url(Categoriy.last)
  end

  test "should show categoriy" do
    get categoriy_url(@categoriy)
    assert_response :success
  end

  test "should get edit" do
    get edit_categoriy_url(@categoriy)
    assert_response :success
  end

  test "should update categoriy" do
    patch categoriy_url(@categoriy), params: { categoriy: { name: @categoriy.name } }
    assert_redirected_to categoriy_url(@categoriy)
  end

  test "should destroy categoriy" do
    assert_difference("Categoriy.count", -1) do
      delete categoriy_url(@categoriy)
    end

    assert_redirected_to categoriys_url
  end
end
