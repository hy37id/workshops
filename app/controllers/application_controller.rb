class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?


  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:firstname, :lastname]
  end





  protect_from_forgery with: :exception



end
