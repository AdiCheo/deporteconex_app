class RegistrationsController < Devise::RegistrationsController
  before_filter :update_sanitized_params, if: :devise_controller?

  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :email, :password, :password_confirmation)}
    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:name, :email, :password, :password_confirmation, :current_password)}
  end

  def create
    if params[:role].present?
      super
      resource.add_role(:role)
      params.each do |key,value|
        Rails.logger.warn "Param #{key}: #{value}"
      end
    else
      redirect_to new_user_registration_path, :notice => "You need to select a role!"
    end
  end
end
