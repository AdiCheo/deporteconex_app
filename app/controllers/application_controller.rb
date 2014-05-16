class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :developer_session, if: -> { check_staging } 

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  private 
  
  def developer_session
    # p "Developer name found in session: #{session[:developer_name]}"
    # p ENV["DEVELOPERS"]
    if session[:developer_name].nil?
      redirect_to developer_lock_path
    end
  end

  def check_staging
    # p ">>> Checking for staging environment..."
    !(ENV["STAGINGTWITTERAPIKEY"].empty?) 
  end

end
