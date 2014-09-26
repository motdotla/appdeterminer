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
end
