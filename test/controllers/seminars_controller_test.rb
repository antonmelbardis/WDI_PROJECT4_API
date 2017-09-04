require 'test_helper'

class SeminarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seminar = seminars(:one)
  end

  test "should get index" do
    get seminars_url, as: :json
    assert_response :success
  end

  test "should create seminar" do
    assert_difference('Seminar.count') do
      post seminars_url, params: { seminar: { country_id: @seminar.country_id, date: @seminar.date, description: @seminar.description, location_address: @seminar.location_address, seminar_name: @seminar.seminar_name, teaching_module_id: @seminar.teaching_module_id, user_id: @seminar.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show seminar" do
    get seminar_url(@seminar), as: :json
    assert_response :success
  end

  test "should update seminar" do
    patch seminar_url(@seminar), params: { seminar: { country_id: @seminar.country_id, date: @seminar.date, description: @seminar.description, location_address: @seminar.location_address, seminar_name: @seminar.seminar_name, teaching_module_id: @seminar.teaching_module_id, user_id: @seminar.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy seminar" do
    assert_difference('Seminar.count', -1) do
      delete seminar_url(@seminar), as: :json
    end

    assert_response 204
  end
end
