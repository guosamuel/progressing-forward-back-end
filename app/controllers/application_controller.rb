class ApplicationController < ActionController::API #requests can come from anywhere


end

# typical rails fullstack app -> every single form and request shooooould come from rails
# class ApplicationController < ActionController::Base
#   protect_from_forgery with: :exception
#   skip_before_action :verify_authenticity_token
# end
