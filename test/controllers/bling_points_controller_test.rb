require 'test_helper'

class BlingPointsControllerTest < ActionController::TestCase
  setup do
    @bling_point = bling_points(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:bling_points)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create bling_point' do
    assert_difference('BlingPoint.count') do
      post :create, bling_point: { value: @bling_point.value }
    end

    assert_redirected_to bling_point_path(assigns(:bling_point))
  end

  test 'should show bling_point' do
    get :show, id: @bling_point
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @bling_point
    assert_response :success
  end

  test 'should update bling_point' do
    patch :update, id: @bling_point, bling_point: { value: @bling_point.value }
    assert_redirected_to bling_point_path(assigns(:bling_point))
  end

  test 'should destroy bling_point' do
    assert_difference('BlingPoint.count', -1) do
      delete :destroy, id: @bling_point
    end

    assert_redirected_to bling_points_path
  end
end
