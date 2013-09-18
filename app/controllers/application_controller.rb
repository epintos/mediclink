class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale

  rescue_from CanCan::AccessDenied do |exception|
    if user_signed_in?
      flash[:error] = "Acceso denegado"
      redirect_to root_path
    else
      redirect_to new_user_session_path
    end
  end

  private
    
    def set_locale
      I18n.locale = :es
      I18n.default_locale = :es
    end

    def after_sign_in_path_for(resource)
      user_path(resource)
    end
end
