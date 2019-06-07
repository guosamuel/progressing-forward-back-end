class ApplicationController < ActionController::API #requests can come from anywhere

  def encode_token(user_id)
    JWT.encode({user_id: user_id}, ENV['SECRET_TOKEN'])
  end

  def auth_headers
    request.headers['Authorization']
  end

  def decoded_token
    begin
      JWT.decode(token, ENV['SECRET_TOKEN'])
    rescue
      nil
    end
  end

  def current_user
    begin
      user_id = decoded_token[0]["user_id"]
      User.find(user_id)
    rescue
      nil
    end
  end

  def logged_in
    !!current_user
  end

  def authorized
    render json: {error: "Unauthorized"}
  end
  
end

# typical rails fullstack app -> every single form and request shooooould come from rails
# class ApplicationController < ActionController::Base
#   protect_from_forgery with: :exception
#   skip_before_action :verify_authenticity_token
# end
