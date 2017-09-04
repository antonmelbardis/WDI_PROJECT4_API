require 'test_helper'

class TeachingModulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teaching_module = teaching_modules(:one)
  end

  test "should get index" do
    get teaching_modules_url, as: :json
    assert_response :success
  end

  test "should create teaching_module" do
    assert_difference('TeachingModule.count') do
      post teaching_modules_url, params: { teaching_module: { teaching_module_description: @teaching_module.teaching_module_description, teaching_module_title: @teaching_module.teaching_module_title } }, as: :json
    end

    assert_response 201
  end

  test "should show teaching_module" do
    get teaching_module_url(@teaching_module), as: :json
    assert_response :success
  end

  test "should update teaching_module" do
    patch teaching_module_url(@teaching_module), params: { teaching_module: { teaching_module_description: @teaching_module.teaching_module_description, teaching_module_title: @teaching_module.teaching_module_title } }, as: :json
    assert_response 200
  end

  test "should destroy teaching_module" do
    assert_difference('TeachingModule.count', -1) do
      delete teaching_module_url(@teaching_module), as: :json
    end

    assert_response 204
  end
end
