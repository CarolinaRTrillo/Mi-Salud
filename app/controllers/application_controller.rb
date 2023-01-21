class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[address latitude longitude name last_name weight height date_of_birth gender phone_number blood_group blood_type photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: %i[address latitude longitude name last_name weight height date_of_birth gender phone_number blood_group blood_type photo])
  end

  def after_sign_in_path_for(resource)
    exams_path
  end
end
