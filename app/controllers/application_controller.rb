class ApplicationController < ActionController::Base

    before_action :configure_sign_up_params, only: [:create], if: :devise_controller?
    before_action :configure_account_update_params, only: [:update], if: :devise_controller?
    before_action :set_query

    def set_query
        @query = Ad.ransack(params[:q])
        @ads = @query.result(distinct: true)
    end

    protected
    
    # If you have extra params to permit, append them to the sanitizer.
    def configure_sign_up_params
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :sex, :role, :city])
    end

    # If you have extra params to permit, append them to the sanitizer.
    def configure_account_update_params
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :sex, :role, :city, :avatar, :avatar_cache, :remove_avatar])
    end
end
