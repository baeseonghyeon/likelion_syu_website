class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  rescue_from CanCan::AccessDenied do |exception|
  redirect_to main_app.root_url, :alert => exception.message
end
  
  
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:gitlink, :email, :password, :phone])
    devise_parameter_sanitizer.permit(:account_update, keys: [:gitlink, :image, :email, :password, :current_password, :phone])
  end
  
  def after_sign_in_path_for(resource)
    posts_path
  end
  
   def after_user_registration_path_for(resource)
    users_path
   end
  
  def after_sign_out_path_for(resource)
    new_user_session_path
  end
  
  def posts
    @post = Post.find(params[:id])
  end
  
end



