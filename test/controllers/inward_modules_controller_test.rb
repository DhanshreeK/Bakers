require 'test_helper'

class InwardModulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inward_module = inward_modules(:one)
  end

  test "should get index" do
    get inward_modules_url
    assert_response :success
  end

  test "should get new" do
    get new_inward_module_url
    assert_response :success
  end

  test "should create inward_module" do
    assert_difference('InwardModule.count') do
      post inward_modules_url, params: { inward_module: { date: @inward_module.date, inward_number: @inward_module.inward_number, product_id: @inward_module.product_id, quantity: @inward_module.quantity } }
    end

    assert_redirected_to inward_module_url(InwardModule.last)
  end

  test "should show inward_module" do
    get inward_module_url(@inward_module)
    assert_response :success
  end

  test "should get edit" do
    get edit_inward_module_url(@inward_module)
    assert_response :success
  end

  test "should update inward_module" do
    patch inward_module_url(@inward_module), params: { inward_module: { date: @inward_module.date, inward_number: @inward_module.inward_number, product_id: @inward_module.product_id, quantity: @inward_module.quantity } }
    assert_redirected_to inward_module_url(@inward_module)
  end

  test "should destroy inward_module" do
    assert_difference('InwardModule.count', -1) do
      delete inward_module_url(@inward_module)
    end

    assert_redirected_to inward_modules_url
  end
end
