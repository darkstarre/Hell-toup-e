class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create

  def welcome
  end

  def create
    auth= request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to '/', :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/', :notice => "Signed out!"
  end

  def auth_hash
    request.env['omniauth.auth']
  end
end
