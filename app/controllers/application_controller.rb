class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	before_action :configure_permitted_parmeters, if: :devise_controller?

	protected

	def configure_permitted_parmeters
		devise_parameter_sanitizer.permit(:sugn_up, keys: [:fullname])
		devise_parameter_sanitizer.permit(:account_update, keys: [:fullname])
	end
end
