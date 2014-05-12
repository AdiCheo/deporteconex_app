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
    end
  end
end
