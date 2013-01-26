require 'test_helper'

class RogomesControllerTest < ActionController::TestCase
  setup do
    @rogome = rogomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rogomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rogome" do
    assert_difference('Rogome.count') do
      post :create, rogome: { description: @rogome.description, title: @rogome.title }
    end

    assert_redirected_to rogome_path(assigns(:rogome))
  end

  test "should show rogome" do
    get :show, id: @rogome
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rogome
    assert_response :success
  end

  test "should update rogome" do
    put :update, id: @rogome, rogome: { description: @rogome.description, title: @rogome.title }
    assert_redirected_to rogome_path(assigns(:rogome))
  end

  test "should destroy rogome" do
    assert_difference('Rogome.count', -1) do
      delete :destroy, id: @rogome
    end

    assert_redirected_to rogomes_path
  end
end
