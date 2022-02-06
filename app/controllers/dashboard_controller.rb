class DashboardController < ApplicationController
  def index
    if params[:user_name].blank?
      params[:user_name] = 'Rodrigo35627393'
      @user = TwitterRequest.user(params[:user_name])
    end
  end
end
