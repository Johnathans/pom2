require 'test_helper'

class HuskyBreedersControllerTest < ActionController::TestCase
  setup do
    @husky_breeder = husky_breeders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:husky_breeders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create husky_breeder" do
    assert_difference('HuskyBreeder.count') do
      post :create, husky_breeder: { description: @husky_breeder.description, email: @husky_breeder.email, name: @husky_breeder.name, phone: @husky_breeder.phone, website: @husky_breeder.website }
    end

    assert_redirected_to husky_breeder_path(assigns(:husky_breeder))
  end

  test "should show husky_breeder" do
    get :show, id: @husky_breeder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @husky_breeder
    assert_response :success
  end

  test "should update husky_breeder" do
    patch :update, id: @husky_breeder, husky_breeder: { description: @husky_breeder.description, email: @husky_breeder.email, name: @husky_breeder.name, phone: @husky_breeder.phone, website: @husky_breeder.website }
    assert_redirected_to husky_breeder_path(assigns(:husky_breeder))
  end

  test "should destroy husky_breeder" do
    assert_difference('HuskyBreeder.count', -1) do
      delete :destroy, id: @husky_breeder
    end

    assert_redirected_to husky_breeders_path
  end
end
