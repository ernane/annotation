class SessionsController < ApplicationController
  def new
  end

  def create
    auth = Authentication.new(params)
    if auth.authenticated?
      if params[:remember_me]
        cookies.permanent[:auth_token] = auth.user.auth_token
      else
        cookies[:auth_token] = auth.user.auth_token  
      end
      session[:user_id] = auth.user.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash[:error] = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    cookies.delete(:auth_token)
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end