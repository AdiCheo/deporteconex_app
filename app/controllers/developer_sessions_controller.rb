class DeveloperSessionsController < ApplicationController
  skip_before_action :developer_session, :only => [:create, :lockpage]
  layout false

  def lockpage
  end

  def destroy
    reset_session
    redirect_to root_url
  end
	
  def create
    # raise request.env["omniauth.auth"].to_yaml
    auth = request.env["omniauth.auth"]
    name = auth["info"]["nickname"]
    
    if ENV["DEVELOPERS"].include?(name.to_s)
      session[:developer_name] = name
      redirect_to root_url
    else
      # at some point we should log bad access attempts and block bad IPs that try to log in too much (if that ever happens)
      redirect_to developer_lock_path
    end
  end
end
