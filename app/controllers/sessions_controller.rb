class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create
  def welcome
  end

  def create
  end

  def destroy
  end

  def auth_hash
    request.env['omniauth.auth']
  end
end
