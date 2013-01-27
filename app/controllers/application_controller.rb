class ApplicationController < ActionController::Base
  protect_from_forgery
  
  respond_to :html
  
  rescue_from ActiveRecord::RecordNotFound do
    case request.format.symbol
    when :html
      redirect_to root_path, flash: {error: t("flash.not_found.alert")} 
    when :json
      render :json => {:error => "Question not found"}, :status => 404
    end
  end
  
private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
