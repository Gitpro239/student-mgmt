require "test_helper"

class CourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cource = cources(:one)
  end

  test "should get index" do
    get cources_url
    assert_response :success
  end

  test "should get new" do
    get new_cource_url
    assert_response :success
  end

  test "should create cource" do
    assert_difference("Cource.count") do
      post cources_url, params: { cource: { description: @cource.description, name: @cource.name } }
    end

    assert_redirected_to cource_url(Cource.last)
  end

  test "should show cource" do
    get cource_url(@cource)
    assert_response :success
  end

  test "should get edit" do
    get edit_cource_url(@cource)
    assert_response :success
  end

  test "should update cource" do
    patch cource_url(@cource), params: { cource: { description: @cource.description, name: @cource.name } }
    assert_redirected_to cource_url(@cource)
  end

  test "should destroy cource" do
    assert_difference("Cource.count", -1) do
      delete cource_url(@cource)
    end

    assert_redirected_to cources_url
  end
end
