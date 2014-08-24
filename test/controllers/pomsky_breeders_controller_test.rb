require 'test_helper'

class PomskyBreedersControllerTest < ActionController::TestCase
  setup do
    @pomsky_breeder = pomsky_breeders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pomsky_breeders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pomsky_breeder" do
    assert_difference('PomskyBreeder.count') do
      post :create, pomsky_breeder: { description: @pomsky_breeder.description, email: @pomsky_breeder.email, name: @pomsky_breeder.name, phone: @pomsky_breeder.phone, website: @pomsky_breeder.website }
    end

    assert_redirected_to pomsky_breeder_path(assigns(:pomsky_breeder))
  end

  test "should show pomsky_breeder" do
    get :show, id: @pomsky_breeder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pomsky_breeder
    assert_response :success
  end

  test "should update pomsky_breeder" do
    patch :update, id: @pomsky_breeder, pomsky_breeder: { description: @pomsky_breeder.description, email: @pomsky_breeder.email, name: @pomsky_breeder.name, phone: @pomsky_breeder.phone, website: @pomsky_breeder.website }
    assert_redirected_to pomsky_breeder_path(assigns(:pomsky_breeder))
  end

  test "should destroy pomsky_breeder" do
    assert_difference('PomskyBreeder.count', -1) do
      delete :destroy, id: @pomsky_breeder
    end

    assert_redirected_to pomsky_breeders_path
  end
end
