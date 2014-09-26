class AppsController < ApplicationController
  def index
    @apps = App.all

    apps_json = []
    @apps.each do |app|
      apps_json.push({name: app.name, url: app.url})
    end
    json = {
      apps: apps_json
    }

    render :json => json
  end

  def add_by_name
    @user = User.where({email: session[:user]}).first

    if @user && @user.add_historysniffed_app_by_name(params[:name])
      render :json => {success: true}
    else
      render :json => {success: false}, status: 400
    end
  end
end
