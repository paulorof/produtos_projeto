require 'test_helper'

class TipoBannersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_banners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_banner" do
    assert_difference('TipoBanner.count') do
      post :create, :tipo_banner => { }
    end

    assert_redirected_to tipo_banner_path(assigns(:tipo_banner))
  end

  test "should show tipo_banner" do
    get :show, :id => tipo_banners(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tipo_banners(:one).to_param
    assert_response :success
  end

  test "should update tipo_banner" do
    put :update, :id => tipo_banners(:one).to_param, :tipo_banner => { }
    assert_redirected_to tipo_banner_path(assigns(:tipo_banner))
  end

  test "should destroy tipo_banner" do
    assert_difference('TipoBanner.count', -1) do
      delete :destroy, :id => tipo_banners(:one).to_param
    end

    assert_redirected_to tipo_banners_path
  end
end
