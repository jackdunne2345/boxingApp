class ApplicationController < ActionController::Base
    #this code was taken from the devise github page and allows me to add more filds for registration
  before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:club, :role])
    end
end
