require 'test_helper'

class DevicesControllerTest < ActionController::TestCase
  setup do
    @device = devices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device" do
    assert_difference('Device.count') do
      post :create, device: { company_id: @device.company_id, device_code: @device.device_code, first_use_date: @device.first_use_date, manufacturer: @device.manufacturer, model_no: @device.model_no, serial_no: @device.serial_no, verify_date: @device.verify_date }
    end

    assert_redirected_to device_path(assigns(:device))
  end

  test "should show device" do
    get :show, id: @device
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @device
    assert_response :success
  end

  test "should update device" do
    patch :update, id: @device, device: { company_id: @device.company_id, device_code: @device.device_code, first_use_date: @device.first_use_date, manufacturer: @device.manufacturer, model_no: @device.model_no, serial_no: @device.serial_no, verify_date: @device.verify_date }
    assert_redirected_to device_path(assigns(:device))
  end

  test "should destroy device" do
    assert_difference('Device.count', -1) do
      delete :destroy, id: @device
    end

    assert_redirected_to devices_path
  end
end
