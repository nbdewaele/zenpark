class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

	before_action :configure_permitted_parameters, if: :devise_controller?

	def confirmation_url(resource, confirmation_token)
		new_user_session_path+"?confirmation_token=#{confirmation_token}"
	end
# http://example.com/confirmation?confirmation_token=srsskLV35zxAfNpkaFJG
	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname])
		devise_parameter_sanitizer.permit(:account_update, keys: [:fullname, :phone_number, :description])
	end
end
