class ApplicationController < ActionController::API #requests can come from anywhere
  # before_action :authorized

  def encode_token(user_id)
    JWT.encode({user_id: user_id}, ENV['SECRET_TOKEN'])
  end

  def token
    request.headers['Authorization']
  end

  def decoded_token
    begin
      JWT.decode(token, ENV['SECRET_TOKEN'])
    rescue JTWT::DecodeError
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

  def formatted_date
    month = params[:date][0..1]
    day = params[:date][3..4]
    year = params[:date][6..9]
    return "#{year}-#{month}-#{day}"
  end

end

# typical rails fullstack app -> every single form and request shooooould come from rails
# class ApplicationController < ActionController::Base
#   protect_from_forgery with: :exception
#   skip_before_action :verify_authenticity_token
# end
