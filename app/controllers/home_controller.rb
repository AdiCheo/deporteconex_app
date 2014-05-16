class HomeController < ApplicationController
  def index
    @user = session[:developer_name]
  end
end
