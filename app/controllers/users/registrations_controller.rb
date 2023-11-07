class Users::RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: [:create]
  
    protected
  
    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :description])
    end

    def after_sign_up_path_for(resource)
      # Redirigez l'utilisateur vers votre page de bienvenue
      welcome_path
    end
end