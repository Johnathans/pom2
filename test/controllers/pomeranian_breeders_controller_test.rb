require 'test_helper'

class PomeranianBreedersControllerTest < ActionController::TestCase
  setup do
    @pomeranian_breeder = pomeranian_breeders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pomeranian_breeders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pomeranian_breeder" do
    assert_difference('PomeranianBreeder.count') do
      post :create, pomeranian_breeder: { description: @pomeranian_breeder.description, email: @pomeranian_breeder.email, name: @pomeranian_breeder.name, phone: @pomeranian_breeder.phone, website: @pomeranian_breeder.website }
    end

    assert_redirected_to pomeranian_breeder_path(assigns(:pomeranian_breeder))
  end

  test "should show pomeranian_breeder" do
    get :show, id: @pomeranian_breeder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pomeranian_breeder
    assert_response :success
  end

  test "should update pomeranian_breeder" do
    patch :update, id: @pomeranian_breeder, pomeranian_breeder: { description: @pomeranian_breeder.description, email: @pomeranian_breeder.email, name: @pomeranian_breeder.name, phone: @pomeranian_breeder.phone, website: @pomeranian_breeder.website }
    assert_redirected_to pomeranian_breeder_path(assigns(:pomeranian_breeder))
  end

  test "should destroy pomeranian_breeder" do
    assert_difference('PomeranianBreeder.count', -1) do
      delete :destroy, id: @pomeranian_breeder
    end

    assert_redirected_to pomeranian_breeders_path
  end
end
