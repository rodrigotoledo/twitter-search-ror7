class DashboardController < ApplicationController
  def index
    if params[:user_name]
      @user = TwitterRequest.user(params[:user_name])
    end
  end
end
