require 'test_helper'

class UserClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_client = user_clients(:one)
  end

  test "should get index" do
    get user_clients_url, as: :json
    assert_response :success
  end

  test "should create user_client" do
    assert_difference('UserClient.count') do
      post user_clients_url, params: { user_client: { bio: @user_client.bio, email: @user_client.email, name: @user_client.name, password: @user_client.password, photo: @user_client.photo, surname: @user_client.surname } }, as: :json
    end

    assert_response 201
  end

  test "should show user_client" do
    get user_client_url(@user_client), as: :json
    assert_response :success
  end

  test "should update user_client" do
    patch user_client_url(@user_client), params: { user_client: { bio: @user_client.bio, email: @user_client.email, name: @user_client.name, password: @user_client.password, photo: @user_client.photo, surname: @user_client.surname } }, as: :json
    assert_response 200
  end

  test "should destroy user_client" do
    assert_difference('UserClient.count', -1) do
      delete user_client_url(@user_client), as: :json
    end

    assert_response 204
  end
end
