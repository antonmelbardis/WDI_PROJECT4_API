class AuthenticationsController < ApplicationController
  skip_before_action :authenticate_user
  def register
    user = User.new(user_params)
    if user.save
      token = Auth.encode({ id: user.id })
      render json: {token: token, user: UserSerializer.new(user) }, status: :ok
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def login
    user = User.find_by_email(params[:email])
    #2. check If there is a user and the password param value matches that of the user found in the database

    if user && user.authenticate(params[:password])
      token = Auth.encode( { id: user.id })
      #3. return the user that has been successfully logged in.
      render json: {token: token, user: UserSerializer.new(user) }, status: :ok

    else
      #4. user cannot be logged in, render error.
      render json: { errors: ["invalid login credentials"]}, status: 401
    end
  end

  private

  def user_params
    params.permit(:username, :email, :name, :surname, :photo, :country_id, :password, :password_confirmation)
  end
end
