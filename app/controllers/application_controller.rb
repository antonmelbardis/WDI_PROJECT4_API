class ApplicationController < ActionController::API
  #when any request is made to the API, execute authenticate_user method to see if there is a current_user or not.
  before_action :authenticate_user

  def authenticate_user
    #this will be the error sent as the response when a request is made with a Invalid token.
    render json: { errors: ['You must be logged in to view this content']}, status:401 unless user_signed_in?
  end

  def user_signed_in?
    !!current_user
    #if someone is logged in return true else false
  end

  def current_user
    @current_user ||= User.find(decoded_token[:id]) if id_found?
    #if any type of error occur, return nil not the actual error
  rescue
    nil
  end

  private

  def id_found?
    token && decoded_token && decoded_token[:id]
  end

  def decoded_token
    @decoded_token ||= Auth.decode(token) if token
  end

  def token
    @token ||= if request.headers['Authorization'].present?
      request.headers['Authorization'].split.last
    end
  end
end
