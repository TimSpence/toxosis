require 'test_helper'

class SpillsControllerTest < ActionController::TestCase
  setup do
    @spill = spills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spill" do
    assert_difference('Spill.count') do
      post :create, :spill => @spill.attributes
    end

    assert_redirected_to spill_path(assigns(:spill))
  end

  test "should show spill" do
    get :show, :id => @spill.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @spill.to_param
    assert_response :success
  end

  test "should update spill" do
    put :update, :id => @spill.to_param, :spill => @spill.attributes
    assert_redirected_to spill_path(assigns(:spill))
  end

  test "should destroy spill" do
    assert_difference('Spill.count', -1) do
      delete :destroy, :id => @spill.to_param
    end

    assert_redirected_to spills_path
  end
end
